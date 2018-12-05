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

build_ts_pngs <- function(COMID, site = NA, out_dir = "", p_title = "") {
  nc_r <- nc_open("http://localhost/thredds/dodsC/nwm_retro")
  
  nc_m <- nc_open("http://localhost/thredds/dodsC/medium_range")
  
  dap_index <- which(nc_r$dim$feature_id$vals == COMID)
  
  ts_r <- data.frame(time=get_time_nc(nc_r$dim$time), 
                     streamflow=ncvar_get(nc_r, "streamflow", start = c(dap_index, 1), count = c(1, -1)))
  
  if(!is.na(site)) {
    ts_o <- dataRetrieval::readNWISdata(sites=site, service="iv", 
                                        parameterCd="00060", 
                                        startDate="2017-05-01T00:00Z")
  
  station_name = attr(ts_o, "siteInfo")$station_nm
  
  ts_o <- ts_o %>%
    select(time = dateTime, streamflow = X_00060_00000) %>%
    mutate(streamflow = streamflow * 0.028316847000000252)
  } else {
    ts_o <- data.frame(dateTime = NA, streamflow = NA)
  }
  
  rt_m <- get_time_nc(nc_m$dim$reference_time)
  t_m <- get_time_nc(nc_m$dim$time)
  
  ts_m <- ncvar_get(nc_m, "streamflow",
                    start = c(dap_index, 1, 1),
                    count = c(1, -1, -1))
  
  ts_m <- tidyr::gather(setNames(data.frame(ts_m), 1:ncol(ts_m)), key = "run", value = "streamflow")
  ts_m["time"] <- t_m[1:length(t_m)]

  extra <- 12*60*60
  pre_nwis <- 200*60*60
  
  ymin <- min(ts_m$streamflow, na.rm = T)
  if(ymin == 0) ymin <- 0.01
  ymax <- max(c(max(ts_m$streamflow, na.rm = T), max(ts_r$streamflow, na.rm = T), max(ts_o$streamflow, na.rm = T)))
  
  ticks <- c(1, 10, 100, 1000, 10000, 100000, 1000000)
  
  ticks <- ticks[which(ticks < ymax & ticks > ymin)]
  
  for(r in 1:(length(unique(ts_m$run))-80)) {
    png(paste0(out_dir, "/", stringr::str_pad(r, width = 4, "left", 0), ".png"), width = 600, height = 400, units = "px")
    
    base_ts <- filter(ts_m, run==r+40)
    
    min_date <- (min(base_ts$time) - pre_nwis)
    max_date <- max(base_ts$time)
    
    retro_ts <- filter(ts_r, time > (min_date - extra) & time < (max_date + extra))
    
    if(!is.na(site)) {
      nwis_ts <- filter(ts_o, time > (min_date - extra) & time < min(base_ts$time))
    }
    
    xmin <- (min(base_ts$time) - pre_nwis)
    xmax <- max(base_ts$time)
    
    if(!is.na(site)) {
      title <-  paste0("Medium Range NWM Operational Archive for nwis site: ", 
                       site, "\n", station_name)
    } else {
      title <- paste("Medium Range NWM Operational Archive for:", p_title)
    }
    
    plot(base_ts[,c("time", "streamflow")], col = "white", 
         ylim = c(ymin, ymax),
         xlim = c(xmin, xmax), 
         main = title,
         xlab = "v1.2 retrospective in red, NWIS observations in blue",
         ylab = "Streamflow (cubic meters per second)", log="y", yaxt = "n")
    
    
    axis(2, at=ticks, labels=ticks)
    
    if(is.na(site)) {
    abline(v=max(nwis_ts$time))

    usr <- par("usr")
    t_label <- format(max(nwis_ts$time), format = "%m/%d/%Y %H:%M", tz = "UTC")
    text(max(nwis_ts$time)+3600,
         10^usr[4] - ((10^usr[4] - 10^usr[3])/50),
         t_label, adj = c(0,1), cex = 1.5)
    }
    
    for(p in 1:40) {
      color <- paste0("grey", round((100-p*(100/41))))
      lines(filter(ts_m, run==(p+r))[,c("time", "streamflow")], col = color)
    }
    lines(retro_ts, col = "red")
    
    if(!is.na(site)) {
      lines(nwis_ts, col = "blue")
    }
    dev.off()
  }
}

sites <- sf::st_read("~/Documents/Projects/NWM/2_code/nwm_output/R/nexus_locations/linked_sites.gpkg")
# Extra: "06881000", "06835500", "06853500"
site_list <- c("02423496", "04074950", "07374000", "05406457", "01646500","06800500")

for(site in site_list) {
  COMID <- dplyr::filter(sites, site_id == site)$COMID

  png_folder <- "temp_png"
  
  dir.create(png_folder)
  
  build_ts_pngs(COMID, site, png_folder)
  
  gifski::gifski(list.files(png_folder, full.names = TRUE), gif_file = paste0(site, "_nwm_animation.gif"), width = 600, height = 400, delay = 0.05, loop = TRUE, progress = TRUE)
  
    unlink(png_folder, recursive = TRUE)
}

single_site <- dataRetrieval::readNWISsite("040263491")
lat <- single_site$dec_lat_va
lon <- single_site$dec_long_va
point <- sf::st_sfc(sf::st_point(c(lon,lat)), crs = "+init=epsg:4326")
comid <- nhdplusTools::discover_nhdplus_id(point)

build_ts_pngs(comid, out_dir = png_folder, p_title = "North Fish Creek")
