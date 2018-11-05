library(nhdplusTools)
library(ncdf4)
library(dplyr)
library(sf)
library(sbtools)
library(readxl)
library(stringr)


get_time_nc <- function(tDim) {
  as.POSIXct(tDim$vals*60, 
             origin = as.POSIXct(strsplit(tDim$units,
                                          split = " ")[[1]][3], 
                                 tz = "UTC"),
             tz = "UTC")
}

siteInfo <- readRDS("siteInfo.rds") %>%
  filter(type == "Surface Water")
sites <- siteInfo$site_no
lookup <- sf::read_sf("R/nexus_locations/linked_sites.gpkg")
# sbtools::item_append_files("5bcf61cde4b0b3fc5cde1742", "R/nexus_locations/linked_sites.gpkg")

comids <- dplyr::filter(lookup, site_id %in% sites)

missing <- sites[which(!sites %in% comids$site_id)]

out <- c(site = character(), comid = character())
for(m in missing) {
  site <- list(featureSource = "nwissite", featureID = paste0("USGS-",m))
  c <- discover_nhdplus_id(nldi_feature = site)
  out <- rbind(out, data.frame(site = m, 
                               comid = ifelse(length(c) == 1, c, NA), 
                               stringsAsFactors = FALSE))
}

out <- filter(out, !is.na(comid))

site_list <- rbind(select(st_set_geometry(comids, NULL), site = site_id, comid = COMID), out)
site_list["max_flow"] <- numeric()
comid_list <- site_list$comid

nc <- nc_open("http://localhost/thredds/dodsC/medium_range")

day_stamps <- get_time_nc(nc$dim$reference_time)
day_stamps
# sbtools::item_file_download("5b29099ae4b0592076279884", 
#                             names = "v1.2_retro_percentiles.tsv", destinations = "v1.2_retro_percentiles.tsv")

nwm_percentiles <- readr::read_tsv("v1.2_retro_percentiles.tsv")

site_list_base <- site_list

for (d in c(4)) {
  file_name <- paste0("max_flows_", format(day_stamps[d], "%Y-%m-%dT%HZ"), ".rds")
  if(!file.exists(file_name)) {
    site_list <- site_list_base
    print(file_name)
    for(s in 1:nrow(site_list)) {
      i <- which(nc$dim$feature_id$vals == site_list$comid[s])
      if(length(i) == 1) {
        flow <- ncvar_get(nc, "streamflow", c(i,d,1), c(1,1,-1))
        site_list$max_flow[s] <- max(flow)
      }
    }
    site_list <- left_join(site_list, nwm_percentiles, by = "comid") %>%
      distinct()
    saveRDS(site_list , file_name)
    sbtools::item_append_files("5bcf61cde4b0b3fc5cde1742", file_name)
  }
}

saveRDS(site_list, "max_flows.rds")

sbtools::item_replace_files("5bcf61cde4b0b3fc5cde1742", "max_flows.rds")

qpf_url <- "ftp://ftp.wpc.ncep.noaa.gov/shapefiles/qpf/7day/QPF168hr_Day1-7_latest.tar"

unlink("97e*")
unlink("qpf_7day_latest.tar")

download.file(qpf_url, "qpf_7day_latest.tar")

untar("qpf_7day_latest.tar")

qpf_shape <- list.files(pattern = "*.shp")

proj.string <- "+proj=laea +lat_0=45 +lon_0=-100 +x_0=0 +y_0=0 +a=6370997 +b=6370997 +units=m +no_defs"
qpf <- sf::read_sf(qpf_shape) %>%
  st_transform(proj.string)

saveRDS(qpf, "qpf.rds")

sbtools::item_replace_files("5bcf61cde4b0b3fc5cde1742", "qpf.rds")

sbtools::item_replace_files("5bcf61cde4b0b3fc5cde1742", "R/gage_check.R")
