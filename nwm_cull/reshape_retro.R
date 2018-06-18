  library(ncdf4)
  
  base <- "../../3_thredds/data/nwm_retro_full"
  out_path <- "../../3_thredds/data/nwm_retro_full_"
  
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
    f_num <- stringr::str_pad(i, 3, side="left", pad="0")
    out_file <- paste0("~/temp/temp/nwm_retro_", f_num, ".nc")
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
                             chunksizes = c(500,1), 
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
      
      nc_close(new_nc)
    }
    if(i < length(fid_split)) {
      fid_start <- fid_start + length(fid_split[[i+1]])
    }
  }
  
  rm(lat_split, lon_split, nc_t, time_dim, time)
  
  gc()
  
  files <- list.files(base, pattern = "*.nc", full.names = TRUE)
  
  time_start <- 1
  for(f in files) { 
    print(f)
    start_time <- Sys.time()
    
    steps <- c(1350000, nc$dim$feature_id$len)
    
    fid_start <- 1
    file_num <- 0
    for(fid_stop in steps) {
      count <- fid_stop - fid_start + 1
      
      nc <- nc_open(f, suppress_dimvals = TRUE)
      
      st_data <- ncvar_get(nc, nc$var$streamflow, 
                           raw_datavals = TRUE,
                           start = c(fid_start, 1), 
                           count = c(count, -1))
      
      nc_close(nc)
      
      sub_fid_start <- 1
      while(fid_start < fid_stop) {
        file_num <- file_num + 1
        f_num <- stringr::str_pad(file_num, 3, side="left", pad="0")
        out_file <- paste0("~/temp/temp/nwm_retro_", f_num, ".nc")
        
        new_nc <- nc_open(out_file, write = TRUE)
        
        len <- length(fid_split[[file_num]])
        
        ncvar_put(new_nc, new_nc$var$streamflow,
                  t(st_data[sub_fid_start:(sub_fid_start+len-1),]),
                  start = c(time_start,1), 
                  count = c(nc$dim$time$len, -1))  
        
        nc_close(new_nc)
        fid_start <- fid_start + len
      }
      rm(st_data)
      gc()
    }
    print(Sys.time() - start_time)
    time_start <- time_start + nc$dim$time$len
    file.rename(f, stringr::str_replace(f, "nwm_retro_full", "nwm_retro_full_"))
  }
