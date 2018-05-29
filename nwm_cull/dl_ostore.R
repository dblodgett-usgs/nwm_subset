#!/usr/bin/env Rscript

# date <- "20180505"
# config <- "long_range_mem1"
# type <- "channel_rt"

args = commandArgs(trailingOnly=TRUE)

if (length(args)<3) {
  stop("Need date, config, and type.\n", call.=FALSE)
} else if (length(args)==3) {
  date <- args[[1]]
  config <- args[[2]]
  type <- args[[3]]
}

library(xml2)

ostore_root <- "http://nwcal-rgw.nwc.nws.noaa.gov:8080/nwm"

get_ostore_urls <- function(date, config, type) {
  
  ostore_content <- read_xml(paste0(ostore_root, "?prefix=nwm.", date, "/", config, "&max-keys=100000"))
  
  if(xml_text(xml_find_first(ostore_content, 
                             xpath = "//d1:IsTruncated", 
                             ns = xml_ns(ostore_content))) == "true") stop("truncated file list")
  
  objects <- xml_text(xml_find_all(ostore_content, xpath = "//d1:Key", ns = xml_ns(ostore_content)))
  
  return(paste0(paste0(ostore_root, "/"), objects[grepl(date, objects) & grepl(config, objects) & grepl(type, objects)]))
}

dl_ostore_list <- function(dl_list) {
  out_files <- paste0("nwm", stringr::str_remove(dl_list, ostore_root))
  
  direc <- paste0(stringr::str_split(out_files[1], "/")[[1]][1:3], collapse = "/")
  
  dir.create(direc, recursive = T, showWarnings = F)
  
  for(i in 1:length(dl_list)) {
    download.file(dl_list[i], out_files[i], quiet = T)
  }
}

dl_ostore_list(get_ostore_urls(date, config, type))



