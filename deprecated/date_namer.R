#!/usr/bin/env Rscript

# date <- "20180410"
# in_dir <- "temp"

args = commandArgs(trailingOnly=TRUE)

if (!length(args)==2) {
  stop("Need in_dir and date.\n", call.=FALSE)
} else if (length(args)==2) {
  in_dir <- args[[1]]
  date <- args[[2]]
}

files <- list.files(in_dir)

for(f in files) {
  ref_time <- substr(f, 6, 7)
  
  diff_hours <- as.numeric(substr(f, 35,37))
  
  date_posix <- as.POSIXct(strptime(paste0(date, "T", ref_time), 
                                    format = "%Y%m%dT%H", tz = "GMT"))
  
  date_posix <- date_posix + diff_hours * 60^2
  
  file.rename(file.path(in_dir, f), 
              file.path(in_dir, paste0(strftime(date_posix, 
                             format = "%Y%m%d%H%M", 
                             tz = "GMT"), ".",
														 f)))
}


