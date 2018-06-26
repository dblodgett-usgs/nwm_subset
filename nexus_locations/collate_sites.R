library(dplyr)
library(sf)
library(RANN)

data_dir <- "../../1_data/"
gages_iii_dir <- "gageloc"
sparrow_dir <- "sparrow"
NHDPlus_GageLoc_dir <- "NHDPlusNationalData"
NHDPointEvents_dir <- "NHDPointEvents_fgdb.gdb"
ahps_dir <- "ahps"
nwm_v1dot2_nc <- "../NWM_v1.2_nc_tools_v1/spatialMetadataFiles/nwm-v1.2-channel_spatial_index.nc"

gages_iii <- sf::st_read(file.path(data_dir, gages_iii_dir, "CATCHMENT_gageloc_v1.shp"),
                         stringsAsFactors = FALSE) %>%
  group_by(Gage_no) %>%
  filter(REACH_meas == max(REACH_meas))

sparrow <- readr::read_csv(file.path(data_dir, sparrow_dir, "flow_est.txt"))

ahps <- readr::read_csv(file.path(data_dir, ahps_dir, "station.csv"))

real_time_nwis <- sf::st_read("https://www.waterqualitydata.us/sites/?siteStatus=active&hasDataTypeCd=iv",
                              stringsAsFactors = FALSE)
real_time_nwis <- cbind(real_time_nwis, sf::st_coordinates(real_time_nwis))

NHDPlus_GageLoc <- sf::st_read(file.path(data_dir, NHDPlus_GageLoc_dir, "GageLoc.shp"),
                               stringsAsFactors = FALSE)
NHDPlus_GageLoc <- cbind(NHDPlus_GageLoc, sf::st_coordinates(NHDPlus_GageLoc))

flowlines <- readRDS("../../nhdplus_refactor/nhdplus_flowlines_geo.rds")

sites <- unique(c(gages_iii$Gage_no,
                  sparrow$station_id,
                  real_time_nwis$siteNumber,
                  ahps$gage_id))

sites <- data.frame(site_id = sites[!is.na(sites) & grepl("^[0-9]*$", sites)],
                    stringsAsFactors = FALSE) %>%
  left_join(select(sparrow,
                   site_id = station_id,
                   sparrow_lat = lat,
                   sparrow_lon = lon,
                   sparrow_COMID = comid),
            by = "site_id") %>%
  left_join(select(gages_iii,
                   site_id = Gage_no,
                   Lat_snap, Long_snap, COMID, REACHCODE, REACH_meas),
            by = "site_id") %>%
  left_join(select(real_time_nwis,
                   site_id = siteNumber,
                   nwis_lon = X,
                   nwis_lat = Y),
            by = "site_id") %>%
  left_join(select(NHDPlus_GageLoc,
                   site_id = SOURCE_FEA,
                   nhd_lon = X,
                   nhd_lat = Y),
            by = "site_id") %>%
  mutate(lat = ifelse(!is.na(Lat_snap), Lat_snap,
                      ifelse(!is.na(nwis_lat), nwis_lat,
                             ifelse(!is.na(sparrow_lat), sparrow_lat,
                                    ifelse(!is.na(nhd_lat), nhd_lat, NA)))),
         lon = ifelse(!is.na(Long_snap), Long_snap,
                      ifelse(!is.na(nwis_lon), nwis_lon,
                             ifelse(!is.na(sparrow_lon), sparrow_lon,
                                    ifelse(!is.na(nhd_lon), nhd_lon, NA)))),
         COMID = ifelse(is.na(COMID), sparrow_COMID, COMID))

rm(NHDPlus_GageLoc)
rm(ahps)
rm(sparrow)
rm(real_time_nwis)
rm(gages_iii)
gc()

missing_sites <- dataRetrieval::readNWISsite(
  siteNumbers = sites[["site_id"]][which(is.na(sites$lat))])

sf::st_write(sf::st_as_sf(missing_sites, 
                  coords = c("dec_long_va", "dec_lat_va"), 
                  crs = 4269),
             "missing_sites.shp")

sites <- left_join(sites, select(missing_sites,
                                 site_id = site_no,
                                 dec_lat_va, dec_long_va),
                   by = "site_id") %>%
  mutate(lat = ifelse(is.na(lat), dec_lat_va, lat),
         lon = ifelse(is.na(lon), dec_long_va, lon)) %>%
  filter(!is.na(lat)) %>%
  select(site_id, COMID, REACHCODE, REACH_meas, lat, lon) %>%
  filter(lat > 24.5 & lat < 50 & lon > -126 & lon < -66) # Need to get rid of stuff out of CONUS!!

sites <- as_tibble(sites) %>%
  distinct()

rm(missing_sites)

to_match <- filter(sites, is.na(COMID))

flines <- select(flowlines, COMID, REACHCODE, FromMeas, ToMeas) %>%
  mutate(index = 1:nrow(flowlines))

# Mucho memory usage!!
rm(flowlines)
gc()

# Big bad matrix L1 cooresponds to row number in the flowlines data.frame
coords <- sf::st_coordinates(st_zm(st_cast(flines, "LINESTRING")))
flines <- sf::st_set_geometry(flines, NULL)

# This is the meat and potatoes. Searches for nearest data to query points.
matched <- nn2(data = coords[,1:2],
               query = as.matrix(to_match[c("lon", "lat")]),
               k = 1,
               searchtype = "radius",
               radius = 0.1) %>%
  data.frame() %>%
  left_join(mutate(select(as.data.frame(coords), L1),
                   index = 1:nrow(coords)),
            by = c("nn.idx" = "index")) %>%
  left_join(select(flines, COMID, index), by = c("L1" = "index"))

rel_coords <- as.data.frame(coords) %>%
  mutate(index = 1:nrow(coords)) %>%
  filter(L1 %in% matched$L1) %>%
  group_by(L1) %>%
  mutate(len  = sqrt(((X - (lag(X)))^2) + (((Y - (lag(Y)))^2)))) %>%
  mutate(len = ifelse(is.na(len), 0, len)) %>%
  mutate(len = cumsum(len)) %>%
  mutate(measure = len/max(len)) %>%
  left_join(select(matched, L1, COMID), by = "L1") %>%
  left_join(select(flines, -index), by = "COMID") %>%
  mutate(REACH_meas = FromMeas + (ToMeas-FromMeas)*(measure)) %>%
  ungroup() %>% distinct()

to_match <- cbind(select(to_match, site_id, lat, lon), select(matched, node = nn.idx, COMID))

to_match <- left_join(to_match, select(rel_coords, index, REACHCODE, REACH_meas),
                      by = c("node" = "index")) %>%
  select(site_id, COMID, REACHCODE, REACH_meas, lat, lon)

sites <- rbind(sites, to_match)

sites <- filter(sites, !is.na(COMID)) %>%
  as_tibble() %>%
  distinct()

sites <- sf::st_as_sf(sites, coords = c("lon", "lat"), crs = 4326)

unlink("linked_sites.gpkg")
sf::st_write(sites, "linked_sites.gpkg")

nwm_comids <- ncdf4::nc_open(nwm_v1dot2_nc)$dim$feature_id$vals
# v1_comids <- readRDS("nwm_v1_comids.rds")
# nwm_comids <- as.integer(nwm_comids[nwm_comids %in% v1_comids])
all_comids <- unique(as.integer(c(readRDS("confluence_comids.rds")$COMID, sites$COMID)))
all_comids <- all_comids[all_comids %in% nwm_comids]

saveRDS(all_comids, "comids.rds")

confluence_comids <- unique(readRDS("confluence_comids.rds"))
unlink("confluences.gpkg")
sf::st_write(confluence_comids, "confluences.gpkg")
