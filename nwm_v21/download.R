base <- "https://noaa-nwm-retrospective-2-1-pds.s3.amazonaws.com"

start <- as.POSIXct("1979-02-01 00:00:00", tz = "UTC")
end <- as.POSIXct("2021-01-01 00:00:00", tz = "UTC")

dates <- seq(from = start, to = end, by = "1 hour")

# base
# model_output/1979/197902010100.CHRTOUT_DOMAIN1.comp

u <- paste0(base, "/model_output/", as.character(dates, "%Y"), 
            "/", as.character(dates, "%Y%m%d%H%M"), 
                              ".CHRTOUT_DOMAIN1.comp")
f <- list.files("temp_data")

u <- u[!basename(u) %in% f]

get_data <- function(url) {
  
  f <- paste0("data/", basename(url))
  o <- paste0("temp_data/", basename(url))
  
  if(!file.exists(o)) {
    
    message(o)
    
    try({
      httr::RETRY("GET", url, 
                  config = httr::write_disk(
                    f,
                    overwrite = TRUE))
      
      system2("ncks", c("-O", "-4", "-L", "1", "--cnk_plc=all", "--cnk_map=dmn", "-C", "-v", "streamflow,time", f, f))
      system2("ncap2", c("-O", "-4", "-L", "1", "--cnk_plc=all", "--cnk_map=dmn", "-s", "'streamflow[time,feature_id]=streamflow'", f, o))
      
      unlink(f)
      
    }, silent = FALSE)
  }
}

cl <- parallel::makeCluster(4, outfile = "download_log.log")

library(pbapply)

pbo = pboptions(type="txt")

pbapply::pblapply(u, get_data, cl = cl)


