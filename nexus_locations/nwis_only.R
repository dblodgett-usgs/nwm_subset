sites <- sf::st_read("nexus_locations/linked_sites.gpkg")
comids <- sites$COMID

v1_comids <- readRDS("nexus_locations/nwm_v1_comids.rds")
v2_comids <- ncdf4::nc_open("NWM_v1.2_nc_tools_v1/spatialMetadataFiles/nwm-v1.2-channel_spatial_index.nc")$dim$feature_id$vals

comids <- comids[comids %in% v1_comids]
comids <- comids[comids %in% v2_comids]

saveRDS(comids, "nwis_comids.rds")
