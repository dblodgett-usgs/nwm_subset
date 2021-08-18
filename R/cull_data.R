subset_files <- function(fs, bucket, keys, outdir, cores, comids) {
  dir.create(outdir, showWarnings = FALSE)
  
  template <- tempfile()
  
  download.file(paste0(bucket, keys[1]), template)
  
  nc <- nc_open(template_file, write = FALSE)
  
  keep <- nc$dim$feature_id$vals %in% readRDS(comids)
  
  new_feature_id <- ncvar_get(nc, nc$dim$feature_id$name)[keep]
  
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
  
  temp_out <- tempfile()
  
  new_nc <- nc_create(temp_out, vars, force_v4 = FALSE)
  
  for(var in c(new_nc$vars, new_nc$dim, list(list(name = 0)))) {
    atts <- ncatt_get(nc, var$name)
    sapply(names(atts)[!grepl("^dev.*|^model_.*|stream_order_output", names(atts))], 
           function(att) ncatt_put(new_nc, var$name, attname = att, attval = atts[[att]]))
  }
  
  nc_close(new_nc)
  
  nc_open(temp_out, write = TRUE)
  
  ncvar_put(new_nc, new_nc$dim$feature_id$name)
  
  nc_close(new_nc)
  
  cl <- NULL
  if(cores > 1)
    cl <- parallel::makeCluster(rep("localhost", cores),
                                type = "SOCK", outfile = "par.log") 
  
  pbapply::pblapply(fs, function(in_file, outdir, temp_out, keep) {
    if(!file.exists(out_file <- file.path(outdir, basename(in_file)))) {
      
      library(ncdf4)
      
      file.copy(temp_out, out_file)
      
      nc_in <- nc_open(in_file, write = FALSE)
      
      new_nc <- nc_open(out_file, write = TRUE)
      
      ncvar_put(new_nc, new_nc$var$streamflow, 
                ncvar_get(nc_in, nc$var$streamflow, raw_datavals = TRUE)[keep])
      
      nc_close(new_nc)
      nc_close(nc)
    }
    
    out_file
    
  }, outdir = outdir, temp_out = temp_out, keep = keep)
}