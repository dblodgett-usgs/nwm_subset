options(scipen=999)

base <- "nccopy -k nc7 -d 1 -m 250M -c 'feature_id/1,time/20000'" 

dap_url <- "http://localhost/thredds/dodsC/nwm_retro_full?feature_id[reprep],latitude[reprep],longitude[reprep],streamflow[0:1:219143][reprep],time[0:1:219143]"

fids <- 2729077

size <- 10000

start <- 0

fi <- 1

sink("dap_commands.sh")
while(start < fids) {
  end <- start + size - 1
  if(end > fids) end <- fids - 1
  out_file <- paste0("nwm_retro_", stringr::str_pad(fi, 3, "left", "0"), ".nc")
  command <- paste(base, stringr::str_replace_all(dap_url, "reprep", paste0(start, ":1:", end)), out_file, "\n")
  start <- end + 1
  cat(command)
  fi <- fi + 1
}
sink()
