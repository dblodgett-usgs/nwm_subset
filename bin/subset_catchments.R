#!/usr/bin/env Rscript

# in_file <- "http://igsarmewwsdbl:8080/thredds/dodsC/md1/nwm_v2.ncml"
# out_file <- "test.nc"
# comids <- 240866

###################################################################
# Tested with NWM v1.2 operational outputs and v1.2 retrospective.#
###################################################################

args = commandArgs(trailingOnly=TRUE)

if (length(args)<3) {
  stop("Need input file, output file, and comid RDS file.\n", call.=FALSE)
} else if (length(args)==3) {
  in_file <- args[[1]]
  out_file <- args[[2]]
  comids <- args[[3]]
}

overwrite <- FALSE

if(out_file == in_file) {
  out_file <- paste0(in_file, ".tmp")
  overwrite <- TRUE
}

library(ncdf4)

nc <- nc_open(in_file, write = F)

if(!"reference_time" %in% names(nc$dim) & 
   grepl("nwm.[0-9]{8}", in_file) & 
   grepl("nwm.t[0,1][0-9]z", in_file)) {
  
  nc <- nc_open(in_file, write = T)
  
  # Could get this from a non standard attribute, but whatevs -- the paths work.
  date <- stringr::str_replace(stringr::str_extract(in_file, "nwm.[0-9]{8}"), "nwm.", "")
  
  time <- stringr::str_replace(
    stringr::str_replace(
      stringr::str_extract(in_file, "nwm.t[0,1][0-9]z"),
      "nwm.t", ""),
    "z", "")
  
  ref_time <- as.POSIXct(paste(date,time,00), 
                         tz = "GMT", 
                         format = "%Y%m%d%H%M", 
                         origin = as.POSIXct(1970-01-01, tz = "GMT"))
  
  ref_time <- as.numeric(ref_time) / 60 # seconds to minutes
  
  reference_time_dim <- ncdim_def("reference_time",
                                  units = "",
                                  vals = as.integer(1),
                                  unlim = FALSE, 
                                  create_dimvar = F)
  nc <- ncvar_add(nc, 
                  ncvar_def("reference_time", 
                            dim = reference_time_dim, 
                            units = "minutes since 1970-01-01 00:00:00 UTC",
                            prec = "integer", 
                            longname = "model initialization time"))
  
  ncvar_put(nc, "reference_time", ref_time)
  
  ncatt_put(nc, "reference_time", "standard_name", "forecast_reference_time")
  
  nc_close(nc)
  nc <- nc_open(in_file, write = FALSE) 
}

if("time" %in% names(nc$dim)) {
  if(nc$dim$time$units == "") {
  nc_close(nc)
  nc <- nc_open(in_file, write = T)
  
  start_date <- as.POSIXct(paste0(stringr::str_extract(in_file, "[0-9]{6}"),"010000"), 
                           tz = "GMT", 
                           format = "%Y%m%d%H%M",
                           origin = as.POSIXct(1970-01-01, tz = "GMT"))
  
  start_date <- as.numeric(start_date) / 60
  dates <- seq(start_date, by = 60, length.out = nc$dim$time$len)
  
  nc <- ncvar_add(nc, 
                  ncvar_def("time", 
                            dim = nc$dim$time, 
                            units = "minutes since 1970-01-01 00:00:00 UTC",
                            prec = "integer"))
  ncvar_put(nc, "time", dates)
  
  ncatt_put(nc, "time", "standard_name", "time")
  ncatt_put(nc, "time", "axis", "T")
  
  nc_close(nc)
  nc <- nc_open(in_file, write = FALSE) 
}
}

comids <- readRDS(comids)

keep <- nc$dim$feature_id$vals %in% comids

new_feature_id <- nc$dim$feature_id$vals[keep]

new_feature_id_dim <- ncdim_def(nc$dim$feature_id$name, 
                                units = "", 
                                vals = c(1:length(new_feature_id)), 
                                create_dimvar = F)

if("time" %in% names(nc$dim)) {
  time_dim <- ncdim_def(nc$dim$time$name, 
                        units = "", 
                        vals = nc$dim$time$vals, 
                        unlim = TRUE, create_dimvar = T)
  vars <- list(ncvar_def(nc$var$streamflow$name, 
                         units = nc$var$streamflow$units, 
                         prec = "integer",
                         dim = list(new_feature_id_dim, 
                                    time_dim)))
  if("reference_time" %in% names(nc$dim)) {
    reference_time_dim <- ncdim_def(nc$dim$reference_time$name,
                                    units = "",
                                    vals = as.integer(1),
                                    create_dimvar = FALSE)
    vars <- c(vars,
              list(ncvar_def(nc$dim$reference_time$name,
                             units = nc$dim$reference_time$units,
                             dim = reference_time_dim)))
  }
  
  if("latitude" %in% names(nc$var)) {
    vars <- c(vars,
              list(ncvar_def(nc$var$latitude$name,
                           units = nc$var$latitude$units,
                           dim = new_feature_id_dim),
                 ncvar_def(nc$var$longitude$name,
                           units = nc$var$longitude$units,
                           dim = new_feature_id_dim)))
  }
} else {
  vars <- list(ncvar_def(nc$var$latitude$name,
                         units = nc$var$latitude$units,
                         dim = new_feature_id_dim),
               ncvar_def(nc$var$longitude$name,
                         units = nc$var$longitude$units,
                         dim = new_feature_id_dim))
}
vars <- c(vars, 
          list(ncvar_def(nc$dim$feature_id$name, 
                         units = "",
                         dim = new_feature_id_dim,
                         prec = "integer")))

new_nc <- nc_create(out_file, vars, force_v4 = TRUE)

for(var in c(nc$var, nc$dim, list(list(name = 0)))) {
  atts <- ncatt_get(nc, var$name)
  for(att in names(atts)) ncatt_put(new_nc, var$name, attname = att, attval = atts[[att]])
}

nc_close(new_nc)
new_nc <- nc_open(out_file, write = TRUE)
if("time" %in% names(nc$dim)) {
  ncvar_put(new_nc, new_nc$var$streamflow, ncvar_get(nc, nc$var$streamflow, raw_datavals = TRUE)[keep])
  if("reference_time" %in% names(nc$dim)) {
    ncvar_put(new_nc, "reference_time", nc$dim$reference_time$vals)
  }
} else {
  ncvar_put(new_nc, new_nc$var$latitude, ncvar_get(nc, nc$var$latitude, raw_datavals = TRUE)[keep])
  ncvar_put(new_nc, new_nc$var$longitude, ncvar_get(nc, nc$var$longitude, raw_datavals = TRUE)[keep])
}

ncvar_put(new_nc, new_nc$dim$feature_id$name, ncvar_get(nc, nc$dim$feature_id$name)[keep])

nc_close(new_nc)
nc_close(nc)

if(overwrite) {
  null <- file.rename(out_file, in_file)
}