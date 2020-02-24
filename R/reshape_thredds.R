reshape_thredds <- function(out) {
  base <- "nccopy -k nc7 -d 1 -m 250M -c 'feature_id/1,time/20000'" 
  
  dap_url <- "http://localhost:8080/thredds/dodsC/thredds_workspace/nwm/nwm_v2/join.ncml?feature_id[reprep],streamflow[0:1:227903][reprep],time[0:1:227903]"
  
  fids <- 2729076
  
  size <- 10000
  
  start <- 0
  
  fi <- 1
  
  cat("#!/bin/bash/\n", file = out)
  
  while(start < fids) {
    end <- start + size - 1
    if(end > fids) end <- fids - 1
    out_file <- paste0("nwm_retro_v2_", stringr::str_pad(fi, 3, "left", "0"), ".nc")
    command <- paste(base, stringr::str_replace_all(dap_url, "reprep", paste0(start, ":1:", end)), out_file, "\n")
    start <- end + 1
    cat(command, file = out, append = TRUE)
    fi <- fi + 1
  }
}