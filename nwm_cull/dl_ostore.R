#!/usr/bin/env Rscript

# date <- "20180410"
# config <- "medium_range"
# type <- "channel_rt"
# run <- "t00z"
# out_dir <- "temp/20180410_medium_range_nwm_t00z/temp"

args = commandArgs(trailingOnly=TRUE)

if (length(args)<5) {
  stop("Need date, config, type, run, and out_dir.\n", call.=FALSE)
} else if (length(args)==5) {
  date <- args[[1]]
  config <- args[[2]]
  type <- args[[3]]
  run <- args[[4]]
  out_dir <- args[[5]]
}

library(xml2)

ostore_root <- "http://nwcal-rgw.nwc.nws.noaa.gov:8080/nwm"

get_ostore_urls <- function(date, config, type, run = "") {
  
  ostore_content <- read_xml(paste0(ostore_root, "?prefix=nwm.", date, "/", config, "&max-keys=100000"))
  
  if(xml_text(xml_find_first(ostore_content, 
                             xpath = "//d1:IsTruncated", 
                             ns = xml_ns(ostore_content))) == "true") stop("truncated file list")
  
  objects <- xml_text(xml_find_all(ostore_content, xpath = "//d1:Key", ns = xml_ns(ostore_content)))
  
  return(paste0(paste0(ostore_root, "/"), objects[grepl(date, objects) & 
                                                    grepl(config, objects) & 
                                                    grepl(type, objects) & 
                                                    grepl(run, objects)]))
}

dl_ostore_list <- function(dl_list, out_dir = "nwm") {
  out_files <- file.path(out_dir, lapply(dl_list, function(x) stringr::str_split(x, "/")[[1]][7]))
  
  direc <- paste0(stringr::str_split(out_files[1], "/")[[1]][1:3], collapse = "/")
  
  dir.create(direc, recursive = T, showWarnings = F)
  
  for(i in 1:length(dl_list)) {
    if(!grepl("NA", dl_list[i])) download.file(dl_list[i], out_files[i], quiet = T)
  }
}

dl_ostore_list(get_ostore_urls(date, config, type, run), out_dir)



