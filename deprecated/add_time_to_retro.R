library(ncdf4)

for(in_file in list.files("./", pattern = "*.nc$")) {
    nc <- nc_open(in_file, write = T, suppress_dimvals = T)
    
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
}
