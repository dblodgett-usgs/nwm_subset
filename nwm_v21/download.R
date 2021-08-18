base <- "https://noaa-nwm-retrospective-2-1-pds.s3.amazonaws.com"

start <- as.POSIXct("1979-01-01 00:00:00")
end <- as.POSIXct("2021-01-01 00:00:00")

dates <- seq(from = start, to = end, by = "1 hour")

# base
# model_output/1979/197902010100.CHRTOUT_DOMAIN1.comp

u <- paste0(base, "/model_output/", as.character(dates, "%Y"), 
            "/", as.character(dates, "%Y%m%d%H%M"), 
                              ".CHRTOUT_DOMAIN1.comp")
f <- list.files("data")

u <- u[!basename(u) %in% f]

get_data <- function(url) {
  try(httr::RETRY("GET", url, 
                  config = httr::write_disk(
                    paste0("data/", basename(url)),
                    overwrite = FALSE)), silent = TRUE)
}

cl <- parallel::makeCluster(4)

library(pbapply)

pbo = pboptions(type="txt")

out <- pbapply::pblapply(u, get_data, cl = cl)

q("no")
