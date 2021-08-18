reshape_thredds <- function(out) {
  base <- "nccopy -k nc7 -d 1 -m 250M -c 'feature_id/1,time/20000'" 
  
  dap_url <- "http://localhost:8080/thredds/dodsC/md0/join.ncml?feature_id[reprep],latitude[reprep],longitude[reprep],streamflow[0:1:227903][reprep],time[0:1:227903]"
  
  fids <- 2729076
  
  size <- 10000
  
  start <- 0
  
  fi <- 1
  
  cat("#!/bin/bash/\n", file = out)
  
  while(start < fids) {
    end <- start + size - 1
    if(end > fids) end <- fids - 1
    out_file <- paste0("nwm_retro_v2_", stringr::str_pad(fi, 3, "left", "0"), ".nc")
    
    command <- paste0(
      "if [ ! -f ", out_file, " ]; then ",
      base, " ",
      stringr::str_replace_all(dap_url, "reprep", paste0(format(start, scientific = FALSE), 
                                                         ":1:", format(end, scientific = FALSE))), " ",
      out_file, "; fi",
      "\n")
    
    start <- end + 1
    cat(command, file = out, append = TRUE)
    fi <- fi + 1
  }
}

reshape_thredds_v21 <- function(out) {
  base <- "nccopy -k nc7 -d 1 -m 250M -c 'feature_id/1,time/20000'" 
  
  dap_url <- "http://localhost:8080/thredds/dodsC/data/nwmv21/content/data/nwm_v21_retro_full.ncml?feature_id[reprep],latitude[reprep],longitude[reprep],streamflow[0:1:227903][reprep],time[0:1:227903]"
  
  fids <- 2729076
  
  size <- 10000
  
  start <- 0
  
  fi <- 1
  
  cat("#!/bin/bash/\n", file = out)
  
  while(start < fids) {
    end <- start + size - 1
    if(end > fids) end <- fids - 1
    out_file <- paste0("nwm_retro_v2_", stringr::str_pad(fi, 3, "left", "0"), ".nc")
    
    command <- paste0(
      "if [ ! -f ", out_file, " ]; then ",
      base, " ",
      stringr::str_replace_all(dap_url, "reprep", paste0(format(start, scientific = FALSE), 
                                                         ":1:", format(end, scientific = FALSE))), " ",
      out_file, "; fi",
      "\n")
    
    start <- end + 1
    cat(command, file = out, append = TRUE)
    fi <- fi + 1
  }
}