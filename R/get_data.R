get_keys <- function(u, regex = NULL, after = NULL, prefix = NULL, override = NULL) {
  
  if(!is.null(override)) {
    return(override)
  }
  
  ru <- paste0(u, "?", "list-type=2")
  if(!is.null(prefix)) ru <- paste0(ru, "&prefix=", prefix)
  if(!is.null(after)) ru <- paste0(ru, "&start-after=", after)
  xml <- as_list(read_xml(ru))
  k <- lapply(xml$ListBucketResult[names(xml$ListBucketResult) == "Contents"], 
              function(x) {
                x$Key[[1]]
              })
  if(!is.null(regex)) k <- as.character(k[grepl(regex, k)])
  
  print(k[length(k)])
  
  if(length(k) > 0) c(k, get_keys(u, regex, k[length(k)]))
}

get_nc_file <- function(bucket, keys, cores, temp_dir, data_path = "data", year = NULL, nwm21 = FALSE) {
  
  if(!is.null(year)) keys <- keys[grepl(year, keys)]
  
  if(nwm21) {
    
    keys <- keys[basename(keys) %in% list.files(data_path)]
    
  } else {
    
    keys <- keys[grepl("full_physics", keys)]
    
  }
  
  cl <- NULL
  if(cores > 1)
    cl <- parallel::makeCluster(rep("localhost", cores),
                                type = "SOCK", outfile = "par.log")
  
  fs <- pbapply::pblapply(keys, function(key, bucket, temp_dir) {
    
    outfile <- file.path(data_path, basename(key))
    
    temp_file <- file.path(temp_dir, basename(key))
    
    dir.create(dirname(path.expand(temp_file)), showWarnings = FALSE, 
               recursive = TRUE)
    
    dir.create(dirname(path.expand(outfile)), showWarnings = FALSE, 
               recursive = TRUE)
    
    # If these files have been put in outfile already, just skip.
    if(!file.exists(outfile)) {
      try(o <- httr::RETRY("GET", paste0(bucket, key), 
                           httr::write_disk(temp_file, 
                                            overwrite = TRUE), 
                           times = 10, pause_cap = 240), 
          silent = FALSE)
      
      system(paste("ncks -O -4 -L 1 --cnk_plc=all --cnk_map=dmn -C -v streamflow", 
                   temp_file, temp_file))
      
      system(paste("mv", temp_file, outfile))
    }
    
    outfile
  }, cl = cl, bucket = bucket, temp_dir = temp_dir)
  
  if(!is.null(cl))
    parallel::stopCluster(cl)
  
  return(fs)
}

