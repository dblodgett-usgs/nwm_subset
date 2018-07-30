dates <- format(seq(as.Date("2018-05-30"), as.Date("2018-06-25"), by="days"), "%Y%m%d")

runs <- c("analysis_assim", "short_range", "medium_range",
          "long_range_mem1", "long_range_mem2", 
          "long_range_mem3", "long_range_mem4")

comids <- "400k_comids.rds"
temp_file_dir <- "/Volumes/tempfs"

sink("fmrc_converter_calls_400k.sh")
cat("#!/bin/bash\n")
cat(paste("Rscript nwm_output/bin/cull_catchments.R nwm_output/NWM_v1.2_nc_tools_v1/spatialMetadataFiles/nwm-v1.2-channel_spatial_index.nc culled_latlon.nc", 
					paste0("nwm_output/R/nexus_locations/",comids,"\n",
								 "ncks -h -O -6 culled_latlon.nc culled_latlon.nc")))
for(date in dates) {
  cat(paste0("if [ ! -f ", date,".tmp ]; then\n  touch ", date, ".tmp\n"))
  for(run in runs) {
    in_spec <- paste0(date, "_", run)
    out_file <- paste0(run, "_", date, ".nc")
    cat(paste("  bash nwm_output/bin/fmrc_converter.sh", in_spec, out_file, temp_file_dir, "nwm_output/bin/", paste0("nwm_output/R/nexus_locations/",comids,"\n")))
  }  
  cat(paste0("fi\n"))
}
sink()

