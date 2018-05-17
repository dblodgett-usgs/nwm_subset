setwd("~/Desktop/")

library(ncdf4)

comid <- 11919825
comid <- 19088319
comid <- 21177172

nc <- nc_open("nwm_output/medium_range_20170511.nc")

ind <- which(nc$dim$feature_id$vals %in% comid)

sf <- ncvar_get(nc, "streamflow", c(ind, 1,1), c(1, -1, 1))

nc_close(nc)

nc <- nc_open("nwm_retro/199301_STREAMFLOW_DOMAIN1.nc")

ind <- which(nc$dim$feature_id$vals %in% comid)

sf <- ncvar_get(nc, "streamflow", c(ind, 1), c(1, -1))

nc_close(nc)

nc <- nc_open("~/Downloads/nwm.t00z.medium_range.channel_rt.f003.conus.nc")

ind <- which(nc$dim$feature_id$vals %in% comid)

sf <- ncvar_get(nc, "streamflow", ind, 1)
