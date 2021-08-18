concat <- function(keys, in_path, out_path, os, reruns) {
  
  keys <- keys[grepl("full_physics", keys)]
  
  if(length(reruns) > 0) {
    keys <- keys[grepl(paste(paste0('.*[0-9][0-9][0-9][0-9]/', reruns), collapse = "|"), keys)]
  }
  
  fs <- basename(keys)
  ds <- dirname(keys)
  
  cat("#!/bin/bash/\n", file = os)
  for(f in fs) {
    f <- file.path(in_path, f)
    cat(paste("ncks --mk_rec_dmn time -h -O", f, f, "\n"), 
        file = os, append = TRUE)
  }
  
  for(year in c(1993:2018)) {
    for(month in c("01", "02", "03", "04", "05", "06", 
                   "07", "08", "09", "10", "11", "12")) {
      if(length(reruns) > 0 && paste0(year,month) %in% reruns) {
        ym <- paste0(year, month, "*")
        fo <- paste0(year, month, ".nc")
        cat(paste("ncrcat", file.path(in_path, ym), file.path(out_path, fo), "\n"), 
            file = os, append = TRUE)
        cat(paste("rm", file.path(in_path, ym), "\n"),
            file = os, append = TRUE)
      }
    }
  }
}

concat_v21 <- function(keys, in_path, out_path, os) {
  
  # keys <- keys[basename(keys) %in% list.files(out_path)]
  
  fs <- basename(keys)
  ds <- dirname(keys)
  
  cat("#!/bin/bash/\n", file = os)
  
  for(year in c(1979:2020)) {
    for(month in c("01", "02", "03", "04", "05", "06", 
                   "07", "08", "09", "10", "11", "12")) {
      ym <- paste0(year, month, "*")
      fo <- paste0(year, month, ".nc")
      cat(paste("ncrcat", file.path(in_path, ym), file.path(out_path, fo), "\n"), 
          file = os, append = TRUE)
      # cat(paste("rm", file.path(in_path, ym), "\n"),
      #     file = os, append = TRUE)
    }
  }
}
