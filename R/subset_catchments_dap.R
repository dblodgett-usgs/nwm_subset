# in_file <- "http://localhost/thredds/dodsC/nwm_retro_full"
# out_file <- "demo_nwm_retro.nc"
# 
in_file <- "http://localhost/thredds/dodsC/medium_range"
out_file <- "subset_medium_range.nc"
# 
# comid_list <- c(7700148, 6781041, 8520575)

library(ncdf4)

nc <- nc_open(in_file)

site_inds <- which(nc$dim$feature_id$vals %in% comid_list) # indices into original nc file

if(length(site_inds) > length(comid_list)) {
  warning("found duplicate comids that match in the input file.")
}

new_feature_id <- nc$dim$feature_id$vals[site_inds]

new_feature_id_dim <- ncdim_def(nc$dim$feature_id$name, 
                                units = "", 
                                vals = c(1:length(new_feature_id)), 
                                create_dimvar = F)

feature_id_dimid <- nc$dim$feature_id$id
time_dimid <- nc$dim$time$id
streamflow_dimids <- nc$var$streamflow$dimids

if(!"reference_time" %in% names(nc$dim)) {
  
  time_dim <- ncdim_def(nc$dim$time$name, 
                        units = "", 
                        vals = nc$dim$time$vals, 
                        unlim = FALSE, create_dimvar = T)
  
  # !! Axis Order Note !! #
  # Always write output with feature_id varying fastest.
  vars <- list(ncvar_def(nc$var$streamflow$name, 
                         units = nc$var$streamflow$units, 
                         prec = "integer",
                         dim = list(time_dim,
                                    new_feature_id_dim),
                         chunksizes = c(nc$dim$time$len,1.), 
                         compression = 1))
  
  # Code below expects c(time,fid) order -- this will fix if its switched.
  dimid_order <- match(streamflow_dimids, c(time_dimid, feature_id_dimid))
  
} else {
  reference_time_dimid <- nc$dim$reference_time$id
  
  time_dim <- ncdim_def(nc$dim$time$name, 
                        units = "", 
                        vals = 1:nc$dim$time$len, 
                        unlim = FALSE, create_dimvar = T)
  
  reference_time_dim <- ncdim_def(nc$dim$reference_time$name,
                                  units = "",
                                  vals = 1:length(nc$dim$reference_time$vals),
                                  create_dimvar = FALSE)
  
  # !! Axis Order Note !! #
  # Always write output with reference_time varying fastest.
  vars <- list(ncvar_def(nc$var$streamflow$name, 
                         units = nc$var$streamflow$units, 
                         prec = "integer",
                         dim = list(new_feature_id_dim, 
                                    time_dim,
                                    reference_time_dim)),
               ncvar_def(nc$dim$reference_time$name,
                         units = nc$dim$reference_time$units,
                         dim = reference_time_dim))
  
  # Code below expects c(fid,time,reference_time) order -- this will fix if its switched.
  dimid_order <- match(streamflow_dimids, c(feature_id_dimid, time_dimid, reference_time_dimid))
}

vars <- c(vars, 
          list(ncvar_def(nc$dim$feature_id$name, 
                         units = "",
                         dim = new_feature_id_dim,
                         prec = "integer"),
               ncvar_def(nc$var$latitude$name,
                         units = nc$var$latitude$units,
                         dim = new_feature_id_dim),
               ncvar_def(nc$var$longitude$name,
                         units = nc$var$longitude$units,
                         dim = new_feature_id_dim)))

new_nc <- nc_create(out_file, vars, force_v4 = TRUE)

for(var in c(nc$var, nc$dim, list(list(name = 0)))) {
  atts <- ncatt_get(nc, var$name)
  for(att in names(atts)) ncatt_put(new_nc, var$name, attname = att, attval = atts[[att]])
}

nc_close(new_nc)

new_nc <- nc_open(out_file, write = TRUE)

for(s in 1:length(site_inds)) {
  if(length(dimid_order) == 2) {
    # Axis order here is always written as the initialization creates above.
    # Axis order reads are flexible based on the dimid_order.
    ncvar_put(new_nc, new_nc$var$streamflow,
              ncvar_get(nc, nc$var$streamflow,
                        start = c(1,site_inds[s])[dimid_order],
                        count = c(-1, 1)[dimid_order], raw_datavals = TRUE),
              start = c(1, s), count = c(-1, 1))
  } else if(length(dimid_order) == 3) {
    ncvar_put(new_nc, new_nc$var$streamflow,
              ncvar_get(nc, nc$var$streamflow,
                        start = c(site_inds[s], 1, 1)[dimid_order],
                        count = c(1, -1, -1)[dimid_order], raw_datavals = TRUE),
              start = c(s, 1, 1),
              count = c(1, -1, -1))
  }
}

if("reference_time" %in% names(nc$dim)) {
  ncvar_put(new_nc, "reference_time", nc$dim$reference_time$vals)
}

ncvar_put(new_nc, new_nc$var$latitude, ncvar_get(nc, nc$var$latitude)[site_inds])
ncvar_put(new_nc, new_nc$var$longitude, ncvar_get(nc, nc$var$longitude)[site_inds])

ncvar_put(new_nc, new_nc$dim$feature_id$name, ncvar_get(nc, nc$dim$feature_id$name)[site_inds])

nc_close(new_nc)
nc_close(nc)
