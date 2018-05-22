date <- "20180101"
config <- "long_range_mem1"
type <- "channel_rt"

library(xml2)

ostore_root <- "http://nwcal-ucs1:8080/nwm"

get_ostore_urls <- function(date, config, type) {
  
  ostore_content <- read_xml(paste0(ostore_root, "?prefix=nwm.", date, "/", config, "&max-keys=100000"))
  
  if(xml_text(xml_find_first(ostore_content, 
                             xpath = "//d1:IsTruncated", 
                             ns = xml_ns(ostore_content))) == "true") stop("truncated file list")
  
  objects <- xml_text(xml_find_all(ostore_content, xpath = "//d1:Key", ns = xml_ns(ostore_content)))
  
  return(paste0(paste0(ostore_root, "/"), objects[grepl(date, objects) & grepl(config, objects) & grepl(type, objects)]))
}

dl_list <- get_ostore_urls(date, config, type)

dl_ostore_list <- function(dl_list) {
  out_files <- stringr::str_remove(dl_list, ostore_root)
  
  direc <- paste0(stringr::str_split(out_files[1], "/")[[1]][1:2], collapse = "/")
  
  dir.create(direc, recursive = T, showWarnings = F)
  
  for(i in 1:length(dl_list)) {
    download.file(dl_list[i], out_files[i])
  }
}