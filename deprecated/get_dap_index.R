sites <- sf::st_read("nexus_locations/linked_sites.gpkg")

site <- c("05490500", "01208990")
ids <- nc$dim$feature_id$vals

get_dap_index <- function(site, ids) {
  which(ids %in% dplyr::filter(sites, site_id %in% site)$COMID)
}

dap_index <- get_dap_index(site, ids)

