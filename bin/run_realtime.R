#!/usr/bin/env Rscript

args = commandArgs(trailingOnly=TRUE)

if (length(args)<1) {
  stop("one or more comma seperated configuration names only \n mr1,mr2,mr3,mr4,mr5,mr6,mr7,sr,aa,lr1,lr2,lr3,lr4", call.=FALSE)
} else if (length(args)==1) {
  configuration <- args[[1]]
}

log_file <- "logs/process_log"

sink(log_file, append = TRUE)

print(paste(Sys.time(), "Starting run:", configuration))

####################
# Global Constants #
####################

t1 <- c("t00z", "t06z", "t12z", "t18z")
t2 <- c("t00z", "t01z", "t02z", "t03z", "t04z", 
        "t05z", "t06z", "t07z", "t08z", "t09z", 
        "t10z", "t11z", "t12z", "t13z", "t14z", 
        "t15z", "t16z", "t17z", "t18z", "t19z", 
        "t20z", "t21z", "t22z", "t23z")

config_lookup <- 
  list(aa = list(dir = "analysis_assim", fi = "analysis_assim", exp_fis = 3, times = t2),
       sr = list(dir = "short_range", fi = "short_range", exp_fis = 18, times = t2),
       mr1 = list(dir = "medium_range_mem1", fi = "medium_range", exp_fis = 80, times = t1),
       mr2 = list(dir = "medium_range_mem2", fi = "medium_range", exp_fis = 80, times = t1),
       mr3 = list(dir = "medium_range_mem3", fi = "medium_range", exp_fis = 80, times = t1),
       mr4 = list(dir = "medium_range_mem4", fi = "medium_range", exp_fis = 80, times = t1),
       mr5 = list(dir = "medium_range_mem5", fi = "medium_range", exp_fis = 80, times = t1),
       mr6 = list(dir = "medium_range_mem6", fi = "medium_range", exp_fis = 80, times = t1),
       mr7 = list(dir = "medium_range_mem7", fi = "medium_range", exp_fis = 80, times = t1),
       lr1 = list(dir = "long_range_mem1", fi = "long_range", exp_fis = 120, times = t1),
       lr2 = list(dir = "long_range_mem2", fi = "long_range", exp_fis = 120, times = t1),
       lr3 = list(dir = "long_range_mem3", fi = "long_range", exp_fis = 120, times = t1),
       lr4 = list(dir = "long_range_mem4", fi = "long_range", exp_fis = 120, times = t1))

retry_dir <- "./data/retry"

# wget constants
nomads_url <- "http://nomads.ncep.noaa.gov/pub/data/nccf/com/nwm/prod"
wget_base <- "wget -r -np -nH --cut-dirs=8 -q -A"
file_type <- "channel_rt"

# lat/lon data for noref file type
lat_lon_file <- "../NWM_v1.2_nc_tools_v1/spatialMetadataFiles/nwm-v1.2-channel_spatial_index.nc"

# data and processing paths
data_dir <- "./data/"
dir.create(retry_dir, showWarnings = FALSE, recursive = TRUE)

proc_dir <- paste0("./data/proc", as.numeric(Sys.time()))

if(any(grepl("proc", list.dirs(data_dir)))) {
  print(paste(Sys.time(), "proc directory exists, exiting."))
  quit()
}

dir.create(proc_dir, showWarnings = FALSE, recursive = TRUE)

day_folder <- paste0("nwm.", format((Sys.time() - 3600), "%Y%m%d", tz = "UTC"))
hour_string <- paste0("t", format((Sys.time() - 3600), "%H", tz = "UTC"), "z")

get_dirs <- function(configuration) {
  out_dir <-  paste0(data_dir, config_lookup[[configuration]]$dir)
  out_dir_noref <-paste0(out_dir, "/noref")
  dir.create(out_dir_noref, showWarnings = FALSE, recursive = TRUE)
  out_dir_ref <- paste0(out_dir, "/ref")
  dir.create(out_dir_ref, showWarnings = FALSE, recursive = TRUE)
  return(list(out_dir_noref = out_dir_noref, out_dir_ref = out_dir_ref))
}

###################
# Runner Function #
###################

run_func <- function(configuration, day_folder, hour_string) {
  
  dirs <- get_dirs(configuration)
  
  out_dir_noref <- dirs[["out_dir_noref"]]
  out_dir_ref <- dirs[["out_dir_ref"]]
  
  out_file_noref <- sprintf("%s/%s.nc", out_dir_noref, "latest")
  out_file_noref_proc <- sprintf("%s/%s.nc", proc_dir, "latest")
  out_file_ref <- sprintf("%s/%s_%s.nc", out_dir_ref, day_folder, hour_string)
  out_file_ref_proc <- sprintf("%s/%s_%s.nc", proc_dir, day_folder, hour_string)
  
  if(!file.exists(out_file_ref)) {
    # main wget call
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
    
    # if download worked
    if(length(list.files(proc_dir)) == config_lookup[[configuration]]$exp_fis) {
      
      tryCatch({
        # main nco conversion call
        system(sprintf("../bin/fmrc_real_time.sh %s %s %s %s",
                       proc_dir,
                       out_file_noref_proc,
                       out_file_ref_proc,
                       lat_lon_file))
        
        # move files when done
        file.rename(out_file_noref_proc, out_file_noref)
        file.rename(out_file_ref_proc, out_file_ref)
        
      }, error = function(e) {
        print(paste(Sys.time(), "Error in processing was", e, "\n Adding to retry."))
        system(sprintf("touch %s/%s__%s__%s", retry_dir, configuration, day_folder, hour_string))
      })
      
    } else {
      if(length(list.files(proc_dir)) > 0) {
        print(paste(Sys.time(), "Unexpected number of files downloaded. Got", length(list.files(proc_dir)),
                    "Expected", config_lookup[[configuration]]$exp_fis))
      }
      # print(paste(Sys.time(), "No Data Downloaded. Adding to retry."))
      system(sprintf("touch %s/%s__%s__%s", retry_dir, configuration, day_folder, hour_string))
    }
  }
  
  unlink(proc_dir, recursive = TRUE)
  
}

retry_delete <- function(configuration) {
  out_dir_ref <- get_dirs(configuration)[["out_dir_ref"]] 
  
  in_place <- list.files(out_dir_ref, full.names = TRUE)
  
  expected_hour_strings <- config_lookup[[configuration]]$times
  expected_hours <- seq((Sys.time() - 24*3600), (Sys.time() - 3600), "hour")
  
  expected_file_paths <- sprintf("%s/%s_%s.nc", 
                                 out_dir_ref, 
                                 paste0("nwm.", format(expected_hours, "%Y%m%d", tz = "UTC")), 
                                 paste0("t", format(expected_hours, "%H", tz = "UTC"), "z"))
  
  expected_file_paths <- expected_file_paths[sapply(expected_hour_strings, 
                                                    function(x) which(grepl(x, expected_file_paths)))]
  
  too_old <- in_place[which(difftime(Sys.time(), file.info(in_place)$mtime, units = "hours") > 24)]
  
  missing <- c(regmatches(expected_file_paths, 
                          regexpr("nwm.[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]_t[0-9][0-9]z", 
                                  expected_file_paths))[which(!expected_file_paths %in% in_place)],
               regmatches(too_old, 
                          regexpr("t[0-9][0-9]z", 
                                  too_old)))
  
  for(missed in missing) {
    m <- strsplit(missed, "_")[[1]]
    m <- paste0(configuration, "__", m[1], "__", m[2])
    if(!m %in% list.files(retry_dir)) {
      print(paste(Sys.time(), "missing", configuration, day_folder, missed))
      system(paste0("touch ", retry_dir,"/", m))
    }
  }
  
  for(to in too_old) {
    unlink(too_old)
  }
}

retry_fun <- function() {
  for(retry_run in list.files(retry_dir)) {
    
    unlink(file.path(retry_dir, retry_run))
    
    retry_run <- strsplit(retry_run, "__")[[1]]
    
    if(strptime(retry_run[2], format = "nwm.%Y%m%d", tz = "UTC") > 
       (Sys.time() - (2 * 24 * 60 * 60))) {
      
      print(paste(Sys.time(), "Retrying:", paste(retry_run, collapse = " ")))
      
      run_func(retry_run[1], retry_run[2], retry_run[3])
    } else {
      print(paste(Sys.time(), "Retry", paste(retry_run, collapse = " "), "too old. Deleting."))
    }
  }
}

retry_fun()

configurations <- strsplit(configuration, ",")[[1]]

for(configuration in configurations) {

  dirs <- get_dirs(configuration)
  
  retry_delete(configuration)
  
  if(hour_string %in% config_lookup[[configuration]]$times) {
    
    print(paste(Sys.time(), "Running:",configuration, day_folder, hour_string))  
    
    run_func(configuration, day_folder, hour_string)
    
  }
  
}

retry_fun()

sink()
