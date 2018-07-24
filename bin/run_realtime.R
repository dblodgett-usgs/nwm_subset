#!/usr/bin/env Rscript

args = commandArgs(trailingOnly=TRUE)

if (length(args)<1) {
  stop("configuration name only \n mr, sr, aa, lr1, lr2, lr3, lr4", call.=FALSE)
} else if (length(args)==1) {
  configuration <- args[[1]]
}

log_file <- "./data/log"

sink(log_file, append = TRUE)

t1 <- c("t00z", "t06z", "t12z", "t18z")
t2 <- c("t00z", "t01z", "t02z", "t03z", "t04z", 
        "t05z", "t06z", "t07z", "t08z", "t09z", 
        "t10z", "t11z", "t12z", "t13z", "t14z", 
        "t15z", "t16z", "t17z", "t18z", "t19z", 
        "t20z", "t21z", "t22z", "t23z")

times <- list(aa = t2, sr = t2, mr = t1,
              lr1 = t1, lr2 = t1, lr3 = t1, lr4 = t1)

retry_dir <- "./data/retry"

run_func <- function(configuration, day_folder, hour_string, retry_dir) {
  
  config_lookup <- 
    list(aa = list(dir = "analysis_assim", fi = "analysis_assim", exp_fis = 3),
         sr = list(dir = "short_range", fi = "short_range", exp_fis = 18),
         mr = list(dir = "medium_range", fi = "medium_range", exp_fis = 80),
         lr1 = list(dir = "long_range_mem1", fi = "long_range_mem1", exp_fis = 120),
         lr2 = list(dir = "long_range_mem2", fi = "long_range_mem2", exp_fis = 120),
         lr3 = list(dir = "long_range_mem3", fi = "long_range_mem3", exp_fis = 120),
         lr4 = list(dir = "long_range_mem4", fi = "long_range_mem4", exp_fis = 120))
  
  nomads_url <- "http://nomads.ncep.noaa.gov/pub/data/nccf/com/nwm/prod"
  wget_base <- "wget -r -np -nH --cut-dirs=8 -q -A"
  file_type <- "channel_rt"
  data_dir <- "./data/"
  proc_dir <- paste0("./data/proc", as.numeric(Sys.time()))
  lat_lon_file <- "../NWM_v1.2_nc_tools_v1/spatialMetadataFiles/nwm-v1.2-channel_spatial_index.nc"
  
  dir.create(proc_dir, showWarnings = FALSE, recursive = TRUE)
  
  try({
  system(sprintf('%s "*%s.%s.%s*" -P %s %s/%s/%s/',
                 wget_base,
                 hour_string,
                 config_lookup[[configuration]]$fi,
                 file_type,
                 proc_dir,
                 nomads_url,
                 day_folder,
                 config_lookup[[configuration]]$dir))
  }, silent = FALSE)
  
  if(length(list.files(proc_dir)) == config_lookup[[configuration]]$exp_fis) {
    
    tryCatch({
      out_dir <-  paste0(data_dir, config_lookup[[configuration]]$dir)
      out_dir_noref <-paste0(out_dir, "/noref")
      dir.create(out_dir_noref, showWarnings = FALSE, recursive = TRUE)
      out_dir_ref <- paste0(out_dir, "/ref")
      dir.create(out_dir_ref, showWarnings = FALSE, recursive = TRUE)
      
      out_file_noref <- sprintf("%s/%s.nc", out_dir_noref, "latest")
      out_file_ref <- sprintf("%s/%s.nc", out_dir_ref, hour_string)
      
      system(sprintf("../bin/fmrc_real_time_both.sh %s %s %s %s",
                     proc_dir,
                     out_file_noref,
                     out_file_ref,
                     lat_lon_file))
    }, error = function(e) {
      print(paste("Error in processing was", e, "\n Adding to retry."))
      dir.create(retry_dir, showWarnings = FALSE, recursive = TRUE)
      system(sprintf("touch %s/%s__%s__%s", retry_dir, configuration, day_folder, hour_string))
    })
    
  } else {
    
    print(paste("No Data Downloaded. Adding to retry."))
    dir.create(retry_dir, showWarnings = FALSE, recursive = TRUE)
    system(sprintf("touch %s/%s__%s__%s", retry_dir, configuration, day_folder, hour_string))
    
  }
    
  unlink(proc_dir, recursive = TRUE)
  
}

day_folder <- paste0("nwm.", format((Sys.time() - 3600), "%Y%m%d", tz = "UTC"))
hour_string <- paste0("t", format((Sys.time() - 3600), "%H", tz = "UTC"), "z")

for(retry_run in list.files(retry_dir)) {
  
  unlink(file.path(retry_dir, retry_run))
  
  retry_run <- strsplit(retry_run, "__")[[1]]
  
  if(strptime(retry_run[2], format = "nwm.%Y%m%d", tz = "UTC") > 
     (Sys.time() - (2 * 24 * 60 * 60))) {
    
    print(paste("Retrying:", paste(retry_run, collapse = " ")))
    
    run_func(retry_run[1], retry_run[2], retry_run[3], retry_dir)
  } else {
    print(paste("Retry", paste(retry_run, collapse = " "), "too old. Deleting."))
  }
}

if(hour_string %in% times[[configuration]]) {
  
  print(paste("Running:",configuration, day_folder, hour_string))  
  
  run_func(configuration, day_folder, hour_string, retry_dir)
  
}

sink()
