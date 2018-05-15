sites <- sf::st_read("linked_sites.gpkg")
comids <- sites$COMID
saveRDS(comids, "nwis_comids.rds")
