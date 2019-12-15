
add_time <- function(keys, in_path, out_path, out_script) {

  keys <- keys[grepl("full_physics", keys)]
  
  fs <- basename(keys)
  ds <- dirname(keys)
  
  for(year in c(1993:2018)) {
    os <- file.path(dirname(out_script), paste0(year, "_", basename(out_script)))
    
    cat("#!/bin/bash/\n", file = os, sep = "/n")
    
    f <- fs[grepl(paste0("^", year), fs)]
    d <- ds[grepl(year, ds)]
    
    lapply(1:length(f), function(x, f, d, out_path, os) {
      add_time_fun(f[x], d[x], out_path, os)
    }, f = f, d = d, out_path = out_path, os = os)
  }
}

add_time_fun <- function(f, in_path, out_path, out_script) {
  t_units <- "Hours since 1970-01-01 00:00:00 UTC"
  date <- strptime(substr(f, 1, 12), "%Y%m%d%H%M", tz = "GMT")
  date <- RNetCDF::utinvcal.nc(t_units, as.POSIXct(date))
  
  defdim <- 'defdim("time",1)'
  addtime <- paste0("time[time]=", date)
  
  modstreamflow <- 'streamflow[time,feature_id]=streamflow'
  time_units <- paste0('time@units="', t_units, '"')
  
  in_file <- file.path(in_path, f)
  out_file <- file.path(out_path, f)
  
  cat(paste0("ncap2 -O  --cnk_plc uck -s '", 
                 paste(defdim, addtime, modstreamflow, time_units, sep = ";"),
                 "' ", in_file, " ", out_file, "\n"), 
      file = out_script, append = TRUE)
  
  return(invisible(NULL))
}

