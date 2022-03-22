library(ncdf4)
library(dplyr)
library(sf)

get_time_nc <- function(tDim) {
  as.POSIXct(tDim$vals*60, 
             origin = as.POSIXct(strsplit(tDim$units,
                                          split = " ")[[1]][3], 
                                 tz = "UTC"),
             tz = "UTC")
}

build_ts_pngs <- function(COMID, site, out_dir) {
  nc_r <- nc_open("nwmv21_nwis.nc")
  
  dap_index <- which(nc_r$dim$feature_id$vals == COMID)
  
  ts_r <- data.frame(time=get_time_nc(nc_r$dim$time), 
                     streamflow=ncvar_get(nc_r, "streamflow", 
                                          start = c(1, dap_index), 
                                          count = c(-1, 1)))
  
  ts_o <- dataRetrieval::readNWISdata(sites = site, 
                                      service="iv", 
                                      parameterCd="00060", 
                                      startDate="2017-01-01T00:00Z")
  
  station_name = attr(ts_o, "siteInfo")$station_nm
  
  ts_o <- ts_o %>%
    select(time = dateTime, streamflow = X_00060_00000) %>%
    mutate(streamflow = streamflow * 0.028316847000000252)
  
  extra <- 12*60*60
  pre_nwis <- 200*60*60
  
  ymin <- min(c(ts_r$streamflow, ts_o$streamflow), na.rm = T)
  if(ymin == 0) ymin <- 0.01
  ymax <- max(c(max(ts_r$streamflow, na.rm = T), max(ts_o$streamflow, na.rm = T)))
  
  ticks <- c(1, 10, 100, 1000, 10000, 100000, 1000000)
  
  ticks <- ticks[which(ticks < ymax & ticks > ymin)]
  
  png(paste0(out_dir, site, ".png"), width = 600, height = 400, units = "px")
  
  # Could use for windowing.
  base_ts <- ts_o
  
  min_date <- min(base_ts$time)
  max_date <- max(base_ts$time)
  
  retro_ts <- filter(ts_r, time > (min_date - extra) & time < (max_date + extra))
  nwis_ts <- filter(ts_o, time > (min_date - extra) & time < (max_date + extra))
  
  xmin <- min(base_ts$time)
  xmax <- max(base_ts$time)
  
  plot(base_ts[,c("time", "streamflow")], col = NA, 
       ylim = c(ymin, ymax),
       xlim = c(xmin, xmax), 
       main = paste0("NWM Archive for nwis site: ", 
                     site, "\n", station_name),
       xlab = "v2.1 retrospective in red, NWIS observations in blue",
       ylab = "Streamflow (cubic meters per second)", log="y", yaxt = "n")
  
  
  axis(2, at=ticks, labels=ticks)
  
  usr <- par("usr")
  
  lines(retro_ts, col = "red")
  lines(nwis_ts, col = "blue")
  
  dev.off()
}

sites <- sf::st_read("R/nexus_locations/linked_sites.gpkg")
site_list <- c("06462000", "06794500", "0679600", "02423496", 
               "04074950", "07374000", "05406457", "01646500",
               "06800500", "06881000", "06835500", "06853500")

for(site in site_list) {
  COMID <- dplyr::filter(sites, site_id == site)$COMID
try(build_ts_pngs(COMID, site, "png/"))
}
