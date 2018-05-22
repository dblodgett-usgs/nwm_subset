dates <- format(seq(as.Date("2017-05-09"), as.Date("2018-05-22"), by="days"), "%Y%m%d")

runs <- c("short_range", "medium_range",
          "long_range_mem1", "long_range_mem2", 
          "long_range_mem3", "long_range_mem4")

comids <- "nwis_comids.rds"

sink("nwm_cull/fmrc_converter_calls.sh")
cat("#!/bin/bash\n")
cat(paste("Rscript nwm_subset/nwm_cull/cull_catchments.R nwm_subset/NWM_v1.2_nc_tools_v1/spatialMetadataFiles/nwm-v1.2-channel_spatial_index.nc culled_latlon.nc", paste0("nwm_subset/nexus_locations/",comids,"\n")))
for(date in dates) {
  cat(paste0("if [ ! -f ", date,".tmp ]; then\n  touch ", date, ".tmp\n"))
  for(run in runs) {
    in_path <- paste0("nwm/nwm.", date, "/", run)
    out_file <- paste0(run, "_", date, ".nc")
    cat(paste("  Rscript --vanilla nwm_subset/nwm_cull/dl_ostore.R", date, run, "channel_rt\n"))
    cat(paste("  bash nwm_subset/nwm_cull/fmrc_converter.sh", in_path, out_file, "/mnt/tmpfs/", "nwm_subset/nwm_cull/", paste0("nwm_subset/nexus_locations/",comids,"\n")))
  }  
  cat(paste0("  rm -r ", "nwm/nwm.", date, "/\nfi\n"))
}
sink()

