#!/usr/bin/env Rscript

# base <- "../../3_thredds/data/nwm_retro_full"
# out_dir <- "~/temp/temp/"

args = commandArgs(trailingOnly=TRUE)

if (length(args)<3) {
  stop("Need base directory and output directory.\n", call.=FALSE)
} else if (length(args)==3) {
  base <- args[[1]]
  out_dir <- args[[2]]
}

library(ncdf4)

files <- list.files(base, pattern = "*.nc", full.names = TRUE)

nc <- nc_open(files[1])

fids <- nc$dim$feature_id$vals
lats <- ncvar_get(nc, nc$var$latitude)
lons <- ncvar_get(nc, nc$var$longitude)

num_fids <- 10000

fid_split <- split(fids, ceiling(seq_along(fids)/num_fids))
lat_split <- split(lats, ceiling(seq_along(lats)/num_fids))
lon_split <- split(lons, ceiling(seq_along(lons)/num_fids))

rm(lats, lons, fids)

time <- c()

for(f in files) {
  nc_t <- nc_open(f, suppress_dimvals = T)
  time <- c(time, ncvar_get(nc_t, "time"))
  nc_close(nc_t)
}

time_dim <- ncdim_def(nc$dim$time$name, 
                      units = nc$dim$time$units, 
                      vals = time, 
                      unlim = FALSE, 
                      create_dimvar = T)

fid_start <- 1
for(i in 1:length(fid_split)) {
  print(i)
  start_time <- Sys.time()
  
  f_num <- stringr::str_pad(i, 3, side="left", pad="0")
  out_file <- paste0(out_dir, "/nwm_retro_", f_num, ".nc")
  if(!file.exists(out_file)) {
    new_feature_id <- fid_split[[i]]
    
    new_feature_id_dim <- ncdim_def(nc$dim$feature_id$name, 
                                    units = "", 
                                    vals = new_feature_id, 
                                    create_dimvar = T)
    
    vars <- list(ncvar_def(nc$var$streamflow$name, 
                           units = nc$var$streamflow$units, 
                           prec = "integer",
                           dim = list(time_dim,
                                      new_feature_id_dim),
                           chunksizes = c(1000,1), 
                           compression = 1),
                 ncvar_def(nc$var$latitude$name,
                           units = nc$var$latitude$units,
                           dim = new_feature_id_dim),
                 ncvar_def(nc$var$longitude$name,
                           units = nc$var$longitude$units,
                           dim = new_feature_id_dim))
    
    new_nc <- nc_create(out_file, vars, force_v4 = TRUE)
    
    for(var in c(nc$var, nc$dim, list(list(name = 0)))) {
      atts <- ncatt_get(nc, var$name)
      for(att in names(atts)) ncatt_put(new_nc, var$name, attname = att, attval = atts[[att]])
    }
    
    ncatt_put(new_nc, "streamflow", "coordinates", "latitude longitude time")
    ncatt_put(new_nc, 0, "conventions", "CF-1.7")
    ncatt_put(new_nc, 0, "featureType", "timeSeries")
    
    nc_close(new_nc)
    
    new_nc <- nc_open(out_file, write = TRUE)
    
    ncvar_put(new_nc, "latitude", lat_split[[i]])
    ncvar_put(new_nc, "longitude", lon_split[[i]])
    
    time_start <- 1
    for(f in files) { 
      nc <- nc_open(f, suppress_dimvals = TRUE)
      ncvar_put(new_nc, new_nc$var$streamflow,
                t(ncvar_get(nc, nc$var$streamflow, 
                          raw_datavals = TRUE,
                          start = c(fid_start,1), 
                          count = c(num_fids, -1))),
                start = c(time_start,1), 
                count = c(nc$dim$time$len, -1))  
      time_start <- time_start + nc$dim$time$len
    }
    
    nc_close(new_nc)
    print(Sys.time() - start_time)
  }
  if(i < length(fid_split)) {
    fid_start <- fid_start + length(fid_split[[i+1]])
  }
}
