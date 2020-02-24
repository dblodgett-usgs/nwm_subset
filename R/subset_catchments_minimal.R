in_file <- "data/full_physics/1993/199301010100.CHRTOUT_DOMAIN1.comp"
template_file <- "data/199301010000.CHRTOUT_DOMAIN1.comp"
out_file <- "data/test.nc"
comids <- "R/nexus_locations/400k_comids.rds"

unlink(out_file)

library(ncdf4)

nc_d <- nc_open(in_file, write = FALSE)
nc <- nc_open(template_file, write = FALSE)

comids <- readRDS(comids)

keep <- nc$dim$feature_id$vals %in% comids

new_feature_id <- nc$dim$feature_id$vals[keep]

new_feature_id_dim <- ncdim_def(nc$dim$feature_id$name, 
                                units = "", 
                                vals = c(1:length(new_feature_id)), 
                                create_dimvar = F)

vars <- list(ncvar_def(nc$dim$feature_id$name, 
                       units = "",
                       dim = new_feature_id_dim,
                       prec = "integer"),
             ncvar_def(nc$var$streamflow$name,
                       nc$var$streamflow$units,
                       dim = new_feature_id_dim,
                       prec = "integer"))

new_nc <- nc_create(out_file, vars, force_v4 = FALSE)

for(var in c(new_nc$vars, new_nc$dim, list(list(name = 0)))) {
  atts <- ncatt_get(nc, var$name)
  sapply(names(atts)[!grepl("^dev.*|^model_.*|stream_order_output", names(atts))], 
         function(att) ncatt_put(new_nc, var$name, attname = att, attval = atts[[att]]))
}

nc_close(new_nc)
new_nc <- nc_open(out_file, write = TRUE)

ncvar_put(new_nc, new_nc$var$streamflow, 
          ncvar_get(nc, nc$var$streamflow, raw_datavals = TRUE)[keep])

ncvar_put(new_nc, new_nc$dim$feature_id$name, ncvar_get(nc, nc$dim$feature_id$name)[keep])

nc_close(new_nc)
nc_close(nc)
