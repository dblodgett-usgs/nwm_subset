#!/usr/bin/env Rscript

args = commandArgs(trailingOnly=TRUE)

if (length(args)<1) {
  stop("configuration name only \n mr, sr, aa, lr1, lr2, lr3, lr4", call.=FALSE)
} else if (length(args)==1) {
  configuration <- args[[1]]
}

proc_dir <- "./data/proc"
data_dir <- "./data/"
lat_lon_file <- "../NWM_v1.2_nc_tools_v1/spatialMetadataFiles/nwm-v1.2-channel_spatial_index.nc"

nomads_url <- "http://nomads.ncep.noaa.gov/pub/data/nccf/com/nwm/prod"
wget_base <- "wget -r -np -nH --cut-dirs=8 -q -A"
file_type <- "channel_rt"

day_folder <- paste0("nwm.", format((Sys.time()-60), "%Y%m%d", tz = "UTC"))

####
# configuration <- "mr"
####

t1 <- c("t00z", "t06z", "t12z", "t18z")
t2 <- c("t00z", "t01z", "t02z", "t03z", "t04z", 
        "t05z", "t06z", "t07z", "t08z", "t09z", 
        "t10z", "t11z", "t12z", "t13z", "t14z", 
        "t15z", "t16z", "t17z", "t18z", "t19z", 
        "t20z", "t21z", "t22z", "t23z")

times <- list(mr = t1, aa = t2, sr = t2,
              lr1 = t1, lr2 = t1, lr3 = t1, lr4 = t1)

config_lookup <- list(mr = list(dir = "medium_range", 
                                fi = "medium_range"),
                      aa = list(dir = "analysis_assim", 
                                fi = "analysis_assim"),
                      sr = list(dir = "short_range", 
                                fi = "short_range"),
                      lr1 = list(dir = "long_range_mem1", 
                                 fi = "long_range_mem1"),
                      lr2 = list(dir = "long_range_mem2", 
                                 fi = "long_range_mem2"),
                      lr3 = list(dir = "long_range_mem3", 
                                 fi = "long_range_mem3"),
                      lr3 = list(dir = "long_range_mem4", 
                                 fi = "long_range_mem4"))

# Gotta figure out date/time handling.
hour_string <- paste0("t", format((Sys.time() - 3600), "%H", tz = "UTC"), "z")

if(hour_string %in% times[[configuration]]) {
  
  # ####
  # day_folder <- "nwm.20180723"
  # ####
  unlink(proc_dir, recursive = TRUE)
  dir.create(proc_dir, showWarnings = FALSE, recursive = TRUE)
  
  system(sprintf('%s "*%s.%s.%s*" -P %s %s/%s/%s/', 
                 wget_base,
                 hour_string,
                 config_lookup[[configuration]]$fi,
                 file_type,
                 proc_dir,
                 nomads_url,
                 day_folder,
                 config_lookup[[configuration]]$dir))
  
  out_dir <-  paste0(data_dir, config_lookup[[configuration]]$dir)
  out_dir_noref <-paste0(out_dir, "/noref")
  dir.create(out_dir_noref, showWarnings = FALSE, recursive = TRUE)
  out_dir_ref <- paste0(out_dir, "/ref")
  dir.create(out_dir_ref, showWarnings = FALSE, recursive = TRUE)
  
  out_file_noref <- sprintf("%s/%s.nc", out_dir_noref, hour_string)
  out_file_ref <- sprintf("%s/%s.nc", out_dir_ref, hour_string)
  
  system(sprintf("../bin/fmrc_real_time_both.sh %s %s %s %s", 
                 proc_dir, 
                 out_file_noref, 
                 out_file_ref, 
                 lat_lon_file))
  
  unlink(proc_dir, recursive = TRUE)
  
}
