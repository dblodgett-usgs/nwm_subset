concat <- function(keys, in_path, out_path, os) {
  
  keys <- keys[grepl("full_physics", keys)]
  fs <- basename(keys)
  ds <- dirname(keys)
  
  cat("#!/bin/bash/\n", file = os)
  for(f in fs) {
    f <- file.path(in_path, f)
    cat(paste("ncks --mk_rec_dmn time -h -O", f, f, "\n"), 
        file = os, append = TRUE)
  }
  
  for(year in c(1993:2018)) {
    for(month in c("01", "02", "03", "04", "05", "06", "07", "08", "09", 
                   "10", "11", "12")) {
      ym <- paste0(year, month, "*")
      fo <- paste0(year, month, ".nc")
      cat(paste("ncrcat", file.path(in_path, ym), file.path(out_path, fo), "\n"), 
          file = os, append = TRUE)
      cat(paste("rm", file.path(in_path, ym), "\n"),
          file = os, append = TRUE)
    }
  }
}