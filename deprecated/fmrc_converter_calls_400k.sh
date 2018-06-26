#!/bin/bash
Rscript nwm_subset/nwm_cull/cull_catchments.R nwm_subset/NWM_v1.2_nc_tools_v1/spatialMetadataFiles/nwm-v1.2-channel_spatial_index.nc culled_latlon.nc nwm_subset/nexus_locations/400k_comids.rds
ncks -h -O -6 culled_latlon.nc culled_latlon.nc
if [ ! -f 20170509.tmp ]; then
  touch 20170509.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170509_analysis_assim analysis_assim_20170509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170509_short_range short_range_20170509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170509_medium_range medium_range_20170509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170509_long_range_mem1 long_range_mem1_20170509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170509_long_range_mem2 long_range_mem2_20170509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170509_long_range_mem3 long_range_mem3_20170509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170509_long_range_mem4 long_range_mem4_20170509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170510.tmp ]; then
  touch 20170510.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170510_analysis_assim analysis_assim_20170510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170510_short_range short_range_20170510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170510_medium_range medium_range_20170510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170510_long_range_mem1 long_range_mem1_20170510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170510_long_range_mem2 long_range_mem2_20170510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170510_long_range_mem3 long_range_mem3_20170510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170510_long_range_mem4 long_range_mem4_20170510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170511.tmp ]; then
  touch 20170511.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170511_analysis_assim analysis_assim_20170511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170511_short_range short_range_20170511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170511_medium_range medium_range_20170511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170511_long_range_mem1 long_range_mem1_20170511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170511_long_range_mem2 long_range_mem2_20170511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170511_long_range_mem3 long_range_mem3_20170511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170511_long_range_mem4 long_range_mem4_20170511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170512.tmp ]; then
  touch 20170512.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170512_analysis_assim analysis_assim_20170512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170512_short_range short_range_20170512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170512_medium_range medium_range_20170512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170512_long_range_mem1 long_range_mem1_20170512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170512_long_range_mem2 long_range_mem2_20170512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170512_long_range_mem3 long_range_mem3_20170512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170512_long_range_mem4 long_range_mem4_20170512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170513.tmp ]; then
  touch 20170513.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170513_analysis_assim analysis_assim_20170513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170513_short_range short_range_20170513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170513_medium_range medium_range_20170513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170513_long_range_mem1 long_range_mem1_20170513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170513_long_range_mem2 long_range_mem2_20170513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170513_long_range_mem3 long_range_mem3_20170513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170513_long_range_mem4 long_range_mem4_20170513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170514.tmp ]; then
  touch 20170514.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170514_analysis_assim analysis_assim_20170514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170514_short_range short_range_20170514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170514_medium_range medium_range_20170514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170514_long_range_mem1 long_range_mem1_20170514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170514_long_range_mem2 long_range_mem2_20170514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170514_long_range_mem3 long_range_mem3_20170514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170514_long_range_mem4 long_range_mem4_20170514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170515.tmp ]; then
  touch 20170515.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170515_analysis_assim analysis_assim_20170515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170515_short_range short_range_20170515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170515_medium_range medium_range_20170515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170515_long_range_mem1 long_range_mem1_20170515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170515_long_range_mem2 long_range_mem2_20170515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170515_long_range_mem3 long_range_mem3_20170515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170515_long_range_mem4 long_range_mem4_20170515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170516.tmp ]; then
  touch 20170516.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170516_analysis_assim analysis_assim_20170516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170516_short_range short_range_20170516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170516_medium_range medium_range_20170516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170516_long_range_mem1 long_range_mem1_20170516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170516_long_range_mem2 long_range_mem2_20170516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170516_long_range_mem3 long_range_mem3_20170516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170516_long_range_mem4 long_range_mem4_20170516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170517.tmp ]; then
  touch 20170517.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170517_analysis_assim analysis_assim_20170517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170517_short_range short_range_20170517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170517_medium_range medium_range_20170517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170517_long_range_mem1 long_range_mem1_20170517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170517_long_range_mem2 long_range_mem2_20170517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170517_long_range_mem3 long_range_mem3_20170517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170517_long_range_mem4 long_range_mem4_20170517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170518.tmp ]; then
  touch 20170518.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170518_analysis_assim analysis_assim_20170518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170518_short_range short_range_20170518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170518_medium_range medium_range_20170518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170518_long_range_mem1 long_range_mem1_20170518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170518_long_range_mem2 long_range_mem2_20170518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170518_long_range_mem3 long_range_mem3_20170518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170518_long_range_mem4 long_range_mem4_20170518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170519.tmp ]; then
  touch 20170519.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170519_analysis_assim analysis_assim_20170519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170519_short_range short_range_20170519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170519_medium_range medium_range_20170519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170519_long_range_mem1 long_range_mem1_20170519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170519_long_range_mem2 long_range_mem2_20170519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170519_long_range_mem3 long_range_mem3_20170519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170519_long_range_mem4 long_range_mem4_20170519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170520.tmp ]; then
  touch 20170520.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170520_analysis_assim analysis_assim_20170520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170520_short_range short_range_20170520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170520_medium_range medium_range_20170520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170520_long_range_mem1 long_range_mem1_20170520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170520_long_range_mem2 long_range_mem2_20170520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170520_long_range_mem3 long_range_mem3_20170520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170520_long_range_mem4 long_range_mem4_20170520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170521.tmp ]; then
  touch 20170521.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170521_analysis_assim analysis_assim_20170521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170521_short_range short_range_20170521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170521_medium_range medium_range_20170521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170521_long_range_mem1 long_range_mem1_20170521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170521_long_range_mem2 long_range_mem2_20170521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170521_long_range_mem3 long_range_mem3_20170521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170521_long_range_mem4 long_range_mem4_20170521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170522.tmp ]; then
  touch 20170522.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170522_analysis_assim analysis_assim_20170522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170522_short_range short_range_20170522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170522_medium_range medium_range_20170522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170522_long_range_mem1 long_range_mem1_20170522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170522_long_range_mem2 long_range_mem2_20170522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170522_long_range_mem3 long_range_mem3_20170522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170522_long_range_mem4 long_range_mem4_20170522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170523.tmp ]; then
  touch 20170523.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170523_analysis_assim analysis_assim_20170523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170523_short_range short_range_20170523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170523_medium_range medium_range_20170523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170523_long_range_mem1 long_range_mem1_20170523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170523_long_range_mem2 long_range_mem2_20170523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170523_long_range_mem3 long_range_mem3_20170523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170523_long_range_mem4 long_range_mem4_20170523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170524.tmp ]; then
  touch 20170524.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170524_analysis_assim analysis_assim_20170524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170524_short_range short_range_20170524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170524_medium_range medium_range_20170524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170524_long_range_mem1 long_range_mem1_20170524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170524_long_range_mem2 long_range_mem2_20170524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170524_long_range_mem3 long_range_mem3_20170524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170524_long_range_mem4 long_range_mem4_20170524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170525.tmp ]; then
  touch 20170525.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170525_analysis_assim analysis_assim_20170525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170525_short_range short_range_20170525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170525_medium_range medium_range_20170525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170525_long_range_mem1 long_range_mem1_20170525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170525_long_range_mem2 long_range_mem2_20170525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170525_long_range_mem3 long_range_mem3_20170525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170525_long_range_mem4 long_range_mem4_20170525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170526.tmp ]; then
  touch 20170526.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170526_analysis_assim analysis_assim_20170526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170526_short_range short_range_20170526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170526_medium_range medium_range_20170526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170526_long_range_mem1 long_range_mem1_20170526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170526_long_range_mem2 long_range_mem2_20170526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170526_long_range_mem3 long_range_mem3_20170526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170526_long_range_mem4 long_range_mem4_20170526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170527.tmp ]; then
  touch 20170527.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170527_analysis_assim analysis_assim_20170527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170527_short_range short_range_20170527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170527_medium_range medium_range_20170527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170527_long_range_mem1 long_range_mem1_20170527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170527_long_range_mem2 long_range_mem2_20170527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170527_long_range_mem3 long_range_mem3_20170527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170527_long_range_mem4 long_range_mem4_20170527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170528.tmp ]; then
  touch 20170528.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170528_analysis_assim analysis_assim_20170528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170528_short_range short_range_20170528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170528_medium_range medium_range_20170528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170528_long_range_mem1 long_range_mem1_20170528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170528_long_range_mem2 long_range_mem2_20170528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170528_long_range_mem3 long_range_mem3_20170528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170528_long_range_mem4 long_range_mem4_20170528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170529.tmp ]; then
  touch 20170529.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170529_analysis_assim analysis_assim_20170529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170529_short_range short_range_20170529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170529_medium_range medium_range_20170529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170529_long_range_mem1 long_range_mem1_20170529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170529_long_range_mem2 long_range_mem2_20170529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170529_long_range_mem3 long_range_mem3_20170529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170529_long_range_mem4 long_range_mem4_20170529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170530.tmp ]; then
  touch 20170530.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170530_analysis_assim analysis_assim_20170530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170530_short_range short_range_20170530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170530_medium_range medium_range_20170530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170530_long_range_mem1 long_range_mem1_20170530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170530_long_range_mem2 long_range_mem2_20170530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170530_long_range_mem3 long_range_mem3_20170530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170530_long_range_mem4 long_range_mem4_20170530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170531.tmp ]; then
  touch 20170531.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170531_analysis_assim analysis_assim_20170531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170531_short_range short_range_20170531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170531_medium_range medium_range_20170531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170531_long_range_mem1 long_range_mem1_20170531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170531_long_range_mem2 long_range_mem2_20170531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170531_long_range_mem3 long_range_mem3_20170531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170531_long_range_mem4 long_range_mem4_20170531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170601.tmp ]; then
  touch 20170601.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170601_analysis_assim analysis_assim_20170601.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170601_short_range short_range_20170601.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170601_medium_range medium_range_20170601.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170601_long_range_mem1 long_range_mem1_20170601.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170601_long_range_mem2 long_range_mem2_20170601.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170601_long_range_mem3 long_range_mem3_20170601.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170601_long_range_mem4 long_range_mem4_20170601.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170602.tmp ]; then
  touch 20170602.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170602_analysis_assim analysis_assim_20170602.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170602_short_range short_range_20170602.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170602_medium_range medium_range_20170602.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170602_long_range_mem1 long_range_mem1_20170602.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170602_long_range_mem2 long_range_mem2_20170602.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170602_long_range_mem3 long_range_mem3_20170602.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170602_long_range_mem4 long_range_mem4_20170602.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170603.tmp ]; then
  touch 20170603.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170603_analysis_assim analysis_assim_20170603.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170603_short_range short_range_20170603.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170603_medium_range medium_range_20170603.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170603_long_range_mem1 long_range_mem1_20170603.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170603_long_range_mem2 long_range_mem2_20170603.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170603_long_range_mem3 long_range_mem3_20170603.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170603_long_range_mem4 long_range_mem4_20170603.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170604.tmp ]; then
  touch 20170604.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170604_analysis_assim analysis_assim_20170604.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170604_short_range short_range_20170604.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170604_medium_range medium_range_20170604.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170604_long_range_mem1 long_range_mem1_20170604.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170604_long_range_mem2 long_range_mem2_20170604.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170604_long_range_mem3 long_range_mem3_20170604.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170604_long_range_mem4 long_range_mem4_20170604.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170605.tmp ]; then
  touch 20170605.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170605_analysis_assim analysis_assim_20170605.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170605_short_range short_range_20170605.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170605_medium_range medium_range_20170605.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170605_long_range_mem1 long_range_mem1_20170605.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170605_long_range_mem2 long_range_mem2_20170605.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170605_long_range_mem3 long_range_mem3_20170605.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170605_long_range_mem4 long_range_mem4_20170605.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170606.tmp ]; then
  touch 20170606.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170606_analysis_assim analysis_assim_20170606.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170606_short_range short_range_20170606.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170606_medium_range medium_range_20170606.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170606_long_range_mem1 long_range_mem1_20170606.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170606_long_range_mem2 long_range_mem2_20170606.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170606_long_range_mem3 long_range_mem3_20170606.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170606_long_range_mem4 long_range_mem4_20170606.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170607.tmp ]; then
  touch 20170607.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170607_analysis_assim analysis_assim_20170607.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170607_short_range short_range_20170607.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170607_medium_range medium_range_20170607.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170607_long_range_mem1 long_range_mem1_20170607.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170607_long_range_mem2 long_range_mem2_20170607.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170607_long_range_mem3 long_range_mem3_20170607.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170607_long_range_mem4 long_range_mem4_20170607.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170608.tmp ]; then
  touch 20170608.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170608_analysis_assim analysis_assim_20170608.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170608_short_range short_range_20170608.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170608_medium_range medium_range_20170608.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170608_long_range_mem1 long_range_mem1_20170608.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170608_long_range_mem2 long_range_mem2_20170608.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170608_long_range_mem3 long_range_mem3_20170608.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170608_long_range_mem4 long_range_mem4_20170608.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170609.tmp ]; then
  touch 20170609.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170609_analysis_assim analysis_assim_20170609.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170609_short_range short_range_20170609.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170609_medium_range medium_range_20170609.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170609_long_range_mem1 long_range_mem1_20170609.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170609_long_range_mem2 long_range_mem2_20170609.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170609_long_range_mem3 long_range_mem3_20170609.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170609_long_range_mem4 long_range_mem4_20170609.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170610.tmp ]; then
  touch 20170610.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170610_analysis_assim analysis_assim_20170610.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170610_short_range short_range_20170610.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170610_medium_range medium_range_20170610.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170610_long_range_mem1 long_range_mem1_20170610.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170610_long_range_mem2 long_range_mem2_20170610.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170610_long_range_mem3 long_range_mem3_20170610.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170610_long_range_mem4 long_range_mem4_20170610.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170611.tmp ]; then
  touch 20170611.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170611_analysis_assim analysis_assim_20170611.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170611_short_range short_range_20170611.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170611_medium_range medium_range_20170611.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170611_long_range_mem1 long_range_mem1_20170611.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170611_long_range_mem2 long_range_mem2_20170611.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170611_long_range_mem3 long_range_mem3_20170611.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170611_long_range_mem4 long_range_mem4_20170611.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170612.tmp ]; then
  touch 20170612.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170612_analysis_assim analysis_assim_20170612.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170612_short_range short_range_20170612.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170612_medium_range medium_range_20170612.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170612_long_range_mem1 long_range_mem1_20170612.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170612_long_range_mem2 long_range_mem2_20170612.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170612_long_range_mem3 long_range_mem3_20170612.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170612_long_range_mem4 long_range_mem4_20170612.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170613.tmp ]; then
  touch 20170613.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170613_analysis_assim analysis_assim_20170613.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170613_short_range short_range_20170613.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170613_medium_range medium_range_20170613.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170613_long_range_mem1 long_range_mem1_20170613.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170613_long_range_mem2 long_range_mem2_20170613.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170613_long_range_mem3 long_range_mem3_20170613.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170613_long_range_mem4 long_range_mem4_20170613.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170614.tmp ]; then
  touch 20170614.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170614_analysis_assim analysis_assim_20170614.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170614_short_range short_range_20170614.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170614_medium_range medium_range_20170614.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170614_long_range_mem1 long_range_mem1_20170614.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170614_long_range_mem2 long_range_mem2_20170614.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170614_long_range_mem3 long_range_mem3_20170614.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170614_long_range_mem4 long_range_mem4_20170614.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170615.tmp ]; then
  touch 20170615.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170615_analysis_assim analysis_assim_20170615.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170615_short_range short_range_20170615.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170615_medium_range medium_range_20170615.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170615_long_range_mem1 long_range_mem1_20170615.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170615_long_range_mem2 long_range_mem2_20170615.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170615_long_range_mem3 long_range_mem3_20170615.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170615_long_range_mem4 long_range_mem4_20170615.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170616.tmp ]; then
  touch 20170616.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170616_analysis_assim analysis_assim_20170616.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170616_short_range short_range_20170616.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170616_medium_range medium_range_20170616.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170616_long_range_mem1 long_range_mem1_20170616.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170616_long_range_mem2 long_range_mem2_20170616.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170616_long_range_mem3 long_range_mem3_20170616.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170616_long_range_mem4 long_range_mem4_20170616.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170617.tmp ]; then
  touch 20170617.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170617_analysis_assim analysis_assim_20170617.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170617_short_range short_range_20170617.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170617_medium_range medium_range_20170617.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170617_long_range_mem1 long_range_mem1_20170617.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170617_long_range_mem2 long_range_mem2_20170617.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170617_long_range_mem3 long_range_mem3_20170617.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170617_long_range_mem4 long_range_mem4_20170617.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170618.tmp ]; then
  touch 20170618.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170618_analysis_assim analysis_assim_20170618.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170618_short_range short_range_20170618.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170618_medium_range medium_range_20170618.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170618_long_range_mem1 long_range_mem1_20170618.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170618_long_range_mem2 long_range_mem2_20170618.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170618_long_range_mem3 long_range_mem3_20170618.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170618_long_range_mem4 long_range_mem4_20170618.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170619.tmp ]; then
  touch 20170619.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170619_analysis_assim analysis_assim_20170619.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170619_short_range short_range_20170619.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170619_medium_range medium_range_20170619.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170619_long_range_mem1 long_range_mem1_20170619.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170619_long_range_mem2 long_range_mem2_20170619.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170619_long_range_mem3 long_range_mem3_20170619.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170619_long_range_mem4 long_range_mem4_20170619.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170620.tmp ]; then
  touch 20170620.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170620_analysis_assim analysis_assim_20170620.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170620_short_range short_range_20170620.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170620_medium_range medium_range_20170620.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170620_long_range_mem1 long_range_mem1_20170620.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170620_long_range_mem2 long_range_mem2_20170620.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170620_long_range_mem3 long_range_mem3_20170620.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170620_long_range_mem4 long_range_mem4_20170620.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170621.tmp ]; then
  touch 20170621.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170621_analysis_assim analysis_assim_20170621.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170621_short_range short_range_20170621.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170621_medium_range medium_range_20170621.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170621_long_range_mem1 long_range_mem1_20170621.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170621_long_range_mem2 long_range_mem2_20170621.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170621_long_range_mem3 long_range_mem3_20170621.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170621_long_range_mem4 long_range_mem4_20170621.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170622.tmp ]; then
  touch 20170622.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170622_analysis_assim analysis_assim_20170622.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170622_short_range short_range_20170622.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170622_medium_range medium_range_20170622.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170622_long_range_mem1 long_range_mem1_20170622.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170622_long_range_mem2 long_range_mem2_20170622.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170622_long_range_mem3 long_range_mem3_20170622.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170622_long_range_mem4 long_range_mem4_20170622.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170623.tmp ]; then
  touch 20170623.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170623_analysis_assim analysis_assim_20170623.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170623_short_range short_range_20170623.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170623_medium_range medium_range_20170623.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170623_long_range_mem1 long_range_mem1_20170623.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170623_long_range_mem2 long_range_mem2_20170623.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170623_long_range_mem3 long_range_mem3_20170623.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170623_long_range_mem4 long_range_mem4_20170623.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170624.tmp ]; then
  touch 20170624.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170624_analysis_assim analysis_assim_20170624.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170624_short_range short_range_20170624.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170624_medium_range medium_range_20170624.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170624_long_range_mem1 long_range_mem1_20170624.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170624_long_range_mem2 long_range_mem2_20170624.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170624_long_range_mem3 long_range_mem3_20170624.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170624_long_range_mem4 long_range_mem4_20170624.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170625.tmp ]; then
  touch 20170625.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170625_analysis_assim analysis_assim_20170625.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170625_short_range short_range_20170625.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170625_medium_range medium_range_20170625.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170625_long_range_mem1 long_range_mem1_20170625.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170625_long_range_mem2 long_range_mem2_20170625.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170625_long_range_mem3 long_range_mem3_20170625.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170625_long_range_mem4 long_range_mem4_20170625.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170626.tmp ]; then
  touch 20170626.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170626_analysis_assim analysis_assim_20170626.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170626_short_range short_range_20170626.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170626_medium_range medium_range_20170626.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170626_long_range_mem1 long_range_mem1_20170626.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170626_long_range_mem2 long_range_mem2_20170626.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170626_long_range_mem3 long_range_mem3_20170626.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170626_long_range_mem4 long_range_mem4_20170626.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170627.tmp ]; then
  touch 20170627.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170627_analysis_assim analysis_assim_20170627.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170627_short_range short_range_20170627.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170627_medium_range medium_range_20170627.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170627_long_range_mem1 long_range_mem1_20170627.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170627_long_range_mem2 long_range_mem2_20170627.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170627_long_range_mem3 long_range_mem3_20170627.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170627_long_range_mem4 long_range_mem4_20170627.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170628.tmp ]; then
  touch 20170628.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170628_analysis_assim analysis_assim_20170628.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170628_short_range short_range_20170628.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170628_medium_range medium_range_20170628.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170628_long_range_mem1 long_range_mem1_20170628.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170628_long_range_mem2 long_range_mem2_20170628.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170628_long_range_mem3 long_range_mem3_20170628.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170628_long_range_mem4 long_range_mem4_20170628.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170629.tmp ]; then
  touch 20170629.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170629_analysis_assim analysis_assim_20170629.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170629_short_range short_range_20170629.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170629_medium_range medium_range_20170629.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170629_long_range_mem1 long_range_mem1_20170629.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170629_long_range_mem2 long_range_mem2_20170629.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170629_long_range_mem3 long_range_mem3_20170629.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170629_long_range_mem4 long_range_mem4_20170629.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170630.tmp ]; then
  touch 20170630.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170630_analysis_assim analysis_assim_20170630.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170630_short_range short_range_20170630.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170630_medium_range medium_range_20170630.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170630_long_range_mem1 long_range_mem1_20170630.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170630_long_range_mem2 long_range_mem2_20170630.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170630_long_range_mem3 long_range_mem3_20170630.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170630_long_range_mem4 long_range_mem4_20170630.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170701.tmp ]; then
  touch 20170701.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170701_analysis_assim analysis_assim_20170701.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170701_short_range short_range_20170701.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170701_medium_range medium_range_20170701.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170701_long_range_mem1 long_range_mem1_20170701.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170701_long_range_mem2 long_range_mem2_20170701.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170701_long_range_mem3 long_range_mem3_20170701.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170701_long_range_mem4 long_range_mem4_20170701.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170702.tmp ]; then
  touch 20170702.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170702_analysis_assim analysis_assim_20170702.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170702_short_range short_range_20170702.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170702_medium_range medium_range_20170702.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170702_long_range_mem1 long_range_mem1_20170702.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170702_long_range_mem2 long_range_mem2_20170702.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170702_long_range_mem3 long_range_mem3_20170702.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170702_long_range_mem4 long_range_mem4_20170702.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170703.tmp ]; then
  touch 20170703.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170703_analysis_assim analysis_assim_20170703.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170703_short_range short_range_20170703.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170703_medium_range medium_range_20170703.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170703_long_range_mem1 long_range_mem1_20170703.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170703_long_range_mem2 long_range_mem2_20170703.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170703_long_range_mem3 long_range_mem3_20170703.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170703_long_range_mem4 long_range_mem4_20170703.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170704.tmp ]; then
  touch 20170704.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170704_analysis_assim analysis_assim_20170704.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170704_short_range short_range_20170704.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170704_medium_range medium_range_20170704.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170704_long_range_mem1 long_range_mem1_20170704.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170704_long_range_mem2 long_range_mem2_20170704.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170704_long_range_mem3 long_range_mem3_20170704.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170704_long_range_mem4 long_range_mem4_20170704.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170705.tmp ]; then
  touch 20170705.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170705_analysis_assim analysis_assim_20170705.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170705_short_range short_range_20170705.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170705_medium_range medium_range_20170705.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170705_long_range_mem1 long_range_mem1_20170705.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170705_long_range_mem2 long_range_mem2_20170705.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170705_long_range_mem3 long_range_mem3_20170705.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170705_long_range_mem4 long_range_mem4_20170705.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170706.tmp ]; then
  touch 20170706.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170706_analysis_assim analysis_assim_20170706.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170706_short_range short_range_20170706.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170706_medium_range medium_range_20170706.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170706_long_range_mem1 long_range_mem1_20170706.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170706_long_range_mem2 long_range_mem2_20170706.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170706_long_range_mem3 long_range_mem3_20170706.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170706_long_range_mem4 long_range_mem4_20170706.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170707.tmp ]; then
  touch 20170707.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170707_analysis_assim analysis_assim_20170707.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170707_short_range short_range_20170707.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170707_medium_range medium_range_20170707.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170707_long_range_mem1 long_range_mem1_20170707.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170707_long_range_mem2 long_range_mem2_20170707.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170707_long_range_mem3 long_range_mem3_20170707.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170707_long_range_mem4 long_range_mem4_20170707.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170708.tmp ]; then
  touch 20170708.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170708_analysis_assim analysis_assim_20170708.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170708_short_range short_range_20170708.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170708_medium_range medium_range_20170708.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170708_long_range_mem1 long_range_mem1_20170708.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170708_long_range_mem2 long_range_mem2_20170708.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170708_long_range_mem3 long_range_mem3_20170708.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170708_long_range_mem4 long_range_mem4_20170708.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170709.tmp ]; then
  touch 20170709.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170709_analysis_assim analysis_assim_20170709.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170709_short_range short_range_20170709.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170709_medium_range medium_range_20170709.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170709_long_range_mem1 long_range_mem1_20170709.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170709_long_range_mem2 long_range_mem2_20170709.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170709_long_range_mem3 long_range_mem3_20170709.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170709_long_range_mem4 long_range_mem4_20170709.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170710.tmp ]; then
  touch 20170710.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170710_analysis_assim analysis_assim_20170710.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170710_short_range short_range_20170710.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170710_medium_range medium_range_20170710.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170710_long_range_mem1 long_range_mem1_20170710.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170710_long_range_mem2 long_range_mem2_20170710.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170710_long_range_mem3 long_range_mem3_20170710.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170710_long_range_mem4 long_range_mem4_20170710.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170711.tmp ]; then
  touch 20170711.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170711_analysis_assim analysis_assim_20170711.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170711_short_range short_range_20170711.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170711_medium_range medium_range_20170711.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170711_long_range_mem1 long_range_mem1_20170711.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170711_long_range_mem2 long_range_mem2_20170711.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170711_long_range_mem3 long_range_mem3_20170711.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170711_long_range_mem4 long_range_mem4_20170711.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170712.tmp ]; then
  touch 20170712.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170712_analysis_assim analysis_assim_20170712.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170712_short_range short_range_20170712.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170712_medium_range medium_range_20170712.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170712_long_range_mem1 long_range_mem1_20170712.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170712_long_range_mem2 long_range_mem2_20170712.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170712_long_range_mem3 long_range_mem3_20170712.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170712_long_range_mem4 long_range_mem4_20170712.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170713.tmp ]; then
  touch 20170713.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170713_analysis_assim analysis_assim_20170713.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170713_short_range short_range_20170713.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170713_medium_range medium_range_20170713.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170713_long_range_mem1 long_range_mem1_20170713.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170713_long_range_mem2 long_range_mem2_20170713.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170713_long_range_mem3 long_range_mem3_20170713.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170713_long_range_mem4 long_range_mem4_20170713.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170714.tmp ]; then
  touch 20170714.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170714_analysis_assim analysis_assim_20170714.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170714_short_range short_range_20170714.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170714_medium_range medium_range_20170714.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170714_long_range_mem1 long_range_mem1_20170714.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170714_long_range_mem2 long_range_mem2_20170714.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170714_long_range_mem3 long_range_mem3_20170714.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170714_long_range_mem4 long_range_mem4_20170714.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170715.tmp ]; then
  touch 20170715.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170715_analysis_assim analysis_assim_20170715.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170715_short_range short_range_20170715.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170715_medium_range medium_range_20170715.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170715_long_range_mem1 long_range_mem1_20170715.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170715_long_range_mem2 long_range_mem2_20170715.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170715_long_range_mem3 long_range_mem3_20170715.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170715_long_range_mem4 long_range_mem4_20170715.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170716.tmp ]; then
  touch 20170716.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170716_analysis_assim analysis_assim_20170716.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170716_short_range short_range_20170716.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170716_medium_range medium_range_20170716.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170716_long_range_mem1 long_range_mem1_20170716.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170716_long_range_mem2 long_range_mem2_20170716.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170716_long_range_mem3 long_range_mem3_20170716.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170716_long_range_mem4 long_range_mem4_20170716.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170717.tmp ]; then
  touch 20170717.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170717_analysis_assim analysis_assim_20170717.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170717_short_range short_range_20170717.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170717_medium_range medium_range_20170717.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170717_long_range_mem1 long_range_mem1_20170717.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170717_long_range_mem2 long_range_mem2_20170717.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170717_long_range_mem3 long_range_mem3_20170717.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170717_long_range_mem4 long_range_mem4_20170717.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170718.tmp ]; then
  touch 20170718.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170718_analysis_assim analysis_assim_20170718.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170718_short_range short_range_20170718.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170718_medium_range medium_range_20170718.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170718_long_range_mem1 long_range_mem1_20170718.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170718_long_range_mem2 long_range_mem2_20170718.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170718_long_range_mem3 long_range_mem3_20170718.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170718_long_range_mem4 long_range_mem4_20170718.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170719.tmp ]; then
  touch 20170719.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170719_analysis_assim analysis_assim_20170719.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170719_short_range short_range_20170719.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170719_medium_range medium_range_20170719.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170719_long_range_mem1 long_range_mem1_20170719.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170719_long_range_mem2 long_range_mem2_20170719.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170719_long_range_mem3 long_range_mem3_20170719.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170719_long_range_mem4 long_range_mem4_20170719.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170720.tmp ]; then
  touch 20170720.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170720_analysis_assim analysis_assim_20170720.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170720_short_range short_range_20170720.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170720_medium_range medium_range_20170720.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170720_long_range_mem1 long_range_mem1_20170720.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170720_long_range_mem2 long_range_mem2_20170720.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170720_long_range_mem3 long_range_mem3_20170720.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170720_long_range_mem4 long_range_mem4_20170720.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170721.tmp ]; then
  touch 20170721.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170721_analysis_assim analysis_assim_20170721.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170721_short_range short_range_20170721.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170721_medium_range medium_range_20170721.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170721_long_range_mem1 long_range_mem1_20170721.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170721_long_range_mem2 long_range_mem2_20170721.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170721_long_range_mem3 long_range_mem3_20170721.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170721_long_range_mem4 long_range_mem4_20170721.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170722.tmp ]; then
  touch 20170722.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170722_analysis_assim analysis_assim_20170722.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170722_short_range short_range_20170722.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170722_medium_range medium_range_20170722.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170722_long_range_mem1 long_range_mem1_20170722.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170722_long_range_mem2 long_range_mem2_20170722.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170722_long_range_mem3 long_range_mem3_20170722.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170722_long_range_mem4 long_range_mem4_20170722.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170723.tmp ]; then
  touch 20170723.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170723_analysis_assim analysis_assim_20170723.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170723_short_range short_range_20170723.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170723_medium_range medium_range_20170723.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170723_long_range_mem1 long_range_mem1_20170723.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170723_long_range_mem2 long_range_mem2_20170723.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170723_long_range_mem3 long_range_mem3_20170723.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170723_long_range_mem4 long_range_mem4_20170723.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170724.tmp ]; then
  touch 20170724.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170724_analysis_assim analysis_assim_20170724.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170724_short_range short_range_20170724.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170724_medium_range medium_range_20170724.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170724_long_range_mem1 long_range_mem1_20170724.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170724_long_range_mem2 long_range_mem2_20170724.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170724_long_range_mem3 long_range_mem3_20170724.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170724_long_range_mem4 long_range_mem4_20170724.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170725.tmp ]; then
  touch 20170725.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170725_analysis_assim analysis_assim_20170725.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170725_short_range short_range_20170725.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170725_medium_range medium_range_20170725.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170725_long_range_mem1 long_range_mem1_20170725.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170725_long_range_mem2 long_range_mem2_20170725.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170725_long_range_mem3 long_range_mem3_20170725.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170725_long_range_mem4 long_range_mem4_20170725.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170726.tmp ]; then
  touch 20170726.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170726_analysis_assim analysis_assim_20170726.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170726_short_range short_range_20170726.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170726_medium_range medium_range_20170726.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170726_long_range_mem1 long_range_mem1_20170726.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170726_long_range_mem2 long_range_mem2_20170726.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170726_long_range_mem3 long_range_mem3_20170726.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170726_long_range_mem4 long_range_mem4_20170726.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170727.tmp ]; then
  touch 20170727.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170727_analysis_assim analysis_assim_20170727.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170727_short_range short_range_20170727.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170727_medium_range medium_range_20170727.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170727_long_range_mem1 long_range_mem1_20170727.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170727_long_range_mem2 long_range_mem2_20170727.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170727_long_range_mem3 long_range_mem3_20170727.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170727_long_range_mem4 long_range_mem4_20170727.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170728.tmp ]; then
  touch 20170728.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170728_analysis_assim analysis_assim_20170728.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170728_short_range short_range_20170728.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170728_medium_range medium_range_20170728.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170728_long_range_mem1 long_range_mem1_20170728.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170728_long_range_mem2 long_range_mem2_20170728.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170728_long_range_mem3 long_range_mem3_20170728.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170728_long_range_mem4 long_range_mem4_20170728.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170729.tmp ]; then
  touch 20170729.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170729_analysis_assim analysis_assim_20170729.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170729_short_range short_range_20170729.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170729_medium_range medium_range_20170729.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170729_long_range_mem1 long_range_mem1_20170729.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170729_long_range_mem2 long_range_mem2_20170729.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170729_long_range_mem3 long_range_mem3_20170729.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170729_long_range_mem4 long_range_mem4_20170729.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170730.tmp ]; then
  touch 20170730.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170730_analysis_assim analysis_assim_20170730.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170730_short_range short_range_20170730.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170730_medium_range medium_range_20170730.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170730_long_range_mem1 long_range_mem1_20170730.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170730_long_range_mem2 long_range_mem2_20170730.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170730_long_range_mem3 long_range_mem3_20170730.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170730_long_range_mem4 long_range_mem4_20170730.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170731.tmp ]; then
  touch 20170731.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170731_analysis_assim analysis_assim_20170731.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170731_short_range short_range_20170731.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170731_medium_range medium_range_20170731.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170731_long_range_mem1 long_range_mem1_20170731.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170731_long_range_mem2 long_range_mem2_20170731.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170731_long_range_mem3 long_range_mem3_20170731.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170731_long_range_mem4 long_range_mem4_20170731.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170801.tmp ]; then
  touch 20170801.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170801_analysis_assim analysis_assim_20170801.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170801_short_range short_range_20170801.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170801_medium_range medium_range_20170801.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170801_long_range_mem1 long_range_mem1_20170801.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170801_long_range_mem2 long_range_mem2_20170801.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170801_long_range_mem3 long_range_mem3_20170801.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170801_long_range_mem4 long_range_mem4_20170801.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170802.tmp ]; then
  touch 20170802.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170802_analysis_assim analysis_assim_20170802.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170802_short_range short_range_20170802.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170802_medium_range medium_range_20170802.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170802_long_range_mem1 long_range_mem1_20170802.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170802_long_range_mem2 long_range_mem2_20170802.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170802_long_range_mem3 long_range_mem3_20170802.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170802_long_range_mem4 long_range_mem4_20170802.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170803.tmp ]; then
  touch 20170803.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170803_analysis_assim analysis_assim_20170803.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170803_short_range short_range_20170803.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170803_medium_range medium_range_20170803.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170803_long_range_mem1 long_range_mem1_20170803.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170803_long_range_mem2 long_range_mem2_20170803.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170803_long_range_mem3 long_range_mem3_20170803.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170803_long_range_mem4 long_range_mem4_20170803.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170804.tmp ]; then
  touch 20170804.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170804_analysis_assim analysis_assim_20170804.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170804_short_range short_range_20170804.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170804_medium_range medium_range_20170804.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170804_long_range_mem1 long_range_mem1_20170804.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170804_long_range_mem2 long_range_mem2_20170804.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170804_long_range_mem3 long_range_mem3_20170804.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170804_long_range_mem4 long_range_mem4_20170804.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170805.tmp ]; then
  touch 20170805.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170805_analysis_assim analysis_assim_20170805.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170805_short_range short_range_20170805.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170805_medium_range medium_range_20170805.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170805_long_range_mem1 long_range_mem1_20170805.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170805_long_range_mem2 long_range_mem2_20170805.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170805_long_range_mem3 long_range_mem3_20170805.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170805_long_range_mem4 long_range_mem4_20170805.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170806.tmp ]; then
  touch 20170806.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170806_analysis_assim analysis_assim_20170806.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170806_short_range short_range_20170806.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170806_medium_range medium_range_20170806.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170806_long_range_mem1 long_range_mem1_20170806.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170806_long_range_mem2 long_range_mem2_20170806.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170806_long_range_mem3 long_range_mem3_20170806.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170806_long_range_mem4 long_range_mem4_20170806.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170807.tmp ]; then
  touch 20170807.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170807_analysis_assim analysis_assim_20170807.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170807_short_range short_range_20170807.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170807_medium_range medium_range_20170807.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170807_long_range_mem1 long_range_mem1_20170807.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170807_long_range_mem2 long_range_mem2_20170807.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170807_long_range_mem3 long_range_mem3_20170807.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170807_long_range_mem4 long_range_mem4_20170807.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170808.tmp ]; then
  touch 20170808.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170808_analysis_assim analysis_assim_20170808.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170808_short_range short_range_20170808.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170808_medium_range medium_range_20170808.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170808_long_range_mem1 long_range_mem1_20170808.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170808_long_range_mem2 long_range_mem2_20170808.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170808_long_range_mem3 long_range_mem3_20170808.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170808_long_range_mem4 long_range_mem4_20170808.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170809.tmp ]; then
  touch 20170809.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170809_analysis_assim analysis_assim_20170809.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170809_short_range short_range_20170809.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170809_medium_range medium_range_20170809.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170809_long_range_mem1 long_range_mem1_20170809.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170809_long_range_mem2 long_range_mem2_20170809.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170809_long_range_mem3 long_range_mem3_20170809.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170809_long_range_mem4 long_range_mem4_20170809.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170810.tmp ]; then
  touch 20170810.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170810_analysis_assim analysis_assim_20170810.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170810_short_range short_range_20170810.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170810_medium_range medium_range_20170810.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170810_long_range_mem1 long_range_mem1_20170810.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170810_long_range_mem2 long_range_mem2_20170810.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170810_long_range_mem3 long_range_mem3_20170810.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170810_long_range_mem4 long_range_mem4_20170810.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170811.tmp ]; then
  touch 20170811.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170811_analysis_assim analysis_assim_20170811.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170811_short_range short_range_20170811.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170811_medium_range medium_range_20170811.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170811_long_range_mem1 long_range_mem1_20170811.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170811_long_range_mem2 long_range_mem2_20170811.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170811_long_range_mem3 long_range_mem3_20170811.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170811_long_range_mem4 long_range_mem4_20170811.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170812.tmp ]; then
  touch 20170812.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170812_analysis_assim analysis_assim_20170812.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170812_short_range short_range_20170812.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170812_medium_range medium_range_20170812.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170812_long_range_mem1 long_range_mem1_20170812.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170812_long_range_mem2 long_range_mem2_20170812.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170812_long_range_mem3 long_range_mem3_20170812.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170812_long_range_mem4 long_range_mem4_20170812.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170813.tmp ]; then
  touch 20170813.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170813_analysis_assim analysis_assim_20170813.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170813_short_range short_range_20170813.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170813_medium_range medium_range_20170813.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170813_long_range_mem1 long_range_mem1_20170813.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170813_long_range_mem2 long_range_mem2_20170813.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170813_long_range_mem3 long_range_mem3_20170813.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170813_long_range_mem4 long_range_mem4_20170813.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170814.tmp ]; then
  touch 20170814.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170814_analysis_assim analysis_assim_20170814.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170814_short_range short_range_20170814.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170814_medium_range medium_range_20170814.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170814_long_range_mem1 long_range_mem1_20170814.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170814_long_range_mem2 long_range_mem2_20170814.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170814_long_range_mem3 long_range_mem3_20170814.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170814_long_range_mem4 long_range_mem4_20170814.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170815.tmp ]; then
  touch 20170815.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170815_analysis_assim analysis_assim_20170815.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170815_short_range short_range_20170815.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170815_medium_range medium_range_20170815.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170815_long_range_mem1 long_range_mem1_20170815.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170815_long_range_mem2 long_range_mem2_20170815.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170815_long_range_mem3 long_range_mem3_20170815.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170815_long_range_mem4 long_range_mem4_20170815.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170816.tmp ]; then
  touch 20170816.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170816_analysis_assim analysis_assim_20170816.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170816_short_range short_range_20170816.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170816_medium_range medium_range_20170816.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170816_long_range_mem1 long_range_mem1_20170816.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170816_long_range_mem2 long_range_mem2_20170816.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170816_long_range_mem3 long_range_mem3_20170816.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170816_long_range_mem4 long_range_mem4_20170816.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170817.tmp ]; then
  touch 20170817.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170817_analysis_assim analysis_assim_20170817.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170817_short_range short_range_20170817.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170817_medium_range medium_range_20170817.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170817_long_range_mem1 long_range_mem1_20170817.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170817_long_range_mem2 long_range_mem2_20170817.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170817_long_range_mem3 long_range_mem3_20170817.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170817_long_range_mem4 long_range_mem4_20170817.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170818.tmp ]; then
  touch 20170818.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170818_analysis_assim analysis_assim_20170818.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170818_short_range short_range_20170818.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170818_medium_range medium_range_20170818.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170818_long_range_mem1 long_range_mem1_20170818.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170818_long_range_mem2 long_range_mem2_20170818.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170818_long_range_mem3 long_range_mem3_20170818.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170818_long_range_mem4 long_range_mem4_20170818.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170819.tmp ]; then
  touch 20170819.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170819_analysis_assim analysis_assim_20170819.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170819_short_range short_range_20170819.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170819_medium_range medium_range_20170819.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170819_long_range_mem1 long_range_mem1_20170819.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170819_long_range_mem2 long_range_mem2_20170819.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170819_long_range_mem3 long_range_mem3_20170819.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170819_long_range_mem4 long_range_mem4_20170819.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170820.tmp ]; then
  touch 20170820.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170820_analysis_assim analysis_assim_20170820.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170820_short_range short_range_20170820.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170820_medium_range medium_range_20170820.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170820_long_range_mem1 long_range_mem1_20170820.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170820_long_range_mem2 long_range_mem2_20170820.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170820_long_range_mem3 long_range_mem3_20170820.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170820_long_range_mem4 long_range_mem4_20170820.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170821.tmp ]; then
  touch 20170821.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170821_analysis_assim analysis_assim_20170821.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170821_short_range short_range_20170821.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170821_medium_range medium_range_20170821.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170821_long_range_mem1 long_range_mem1_20170821.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170821_long_range_mem2 long_range_mem2_20170821.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170821_long_range_mem3 long_range_mem3_20170821.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170821_long_range_mem4 long_range_mem4_20170821.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170822.tmp ]; then
  touch 20170822.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170822_analysis_assim analysis_assim_20170822.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170822_short_range short_range_20170822.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170822_medium_range medium_range_20170822.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170822_long_range_mem1 long_range_mem1_20170822.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170822_long_range_mem2 long_range_mem2_20170822.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170822_long_range_mem3 long_range_mem3_20170822.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170822_long_range_mem4 long_range_mem4_20170822.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170823.tmp ]; then
  touch 20170823.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170823_analysis_assim analysis_assim_20170823.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170823_short_range short_range_20170823.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170823_medium_range medium_range_20170823.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170823_long_range_mem1 long_range_mem1_20170823.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170823_long_range_mem2 long_range_mem2_20170823.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170823_long_range_mem3 long_range_mem3_20170823.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170823_long_range_mem4 long_range_mem4_20170823.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170824.tmp ]; then
  touch 20170824.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170824_analysis_assim analysis_assim_20170824.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170824_short_range short_range_20170824.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170824_medium_range medium_range_20170824.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170824_long_range_mem1 long_range_mem1_20170824.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170824_long_range_mem2 long_range_mem2_20170824.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170824_long_range_mem3 long_range_mem3_20170824.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170824_long_range_mem4 long_range_mem4_20170824.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170825.tmp ]; then
  touch 20170825.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170825_analysis_assim analysis_assim_20170825.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170825_short_range short_range_20170825.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170825_medium_range medium_range_20170825.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170825_long_range_mem1 long_range_mem1_20170825.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170825_long_range_mem2 long_range_mem2_20170825.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170825_long_range_mem3 long_range_mem3_20170825.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170825_long_range_mem4 long_range_mem4_20170825.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170826.tmp ]; then
  touch 20170826.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170826_analysis_assim analysis_assim_20170826.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170826_short_range short_range_20170826.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170826_medium_range medium_range_20170826.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170826_long_range_mem1 long_range_mem1_20170826.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170826_long_range_mem2 long_range_mem2_20170826.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170826_long_range_mem3 long_range_mem3_20170826.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170826_long_range_mem4 long_range_mem4_20170826.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170827.tmp ]; then
  touch 20170827.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170827_analysis_assim analysis_assim_20170827.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170827_short_range short_range_20170827.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170827_medium_range medium_range_20170827.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170827_long_range_mem1 long_range_mem1_20170827.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170827_long_range_mem2 long_range_mem2_20170827.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170827_long_range_mem3 long_range_mem3_20170827.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170827_long_range_mem4 long_range_mem4_20170827.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170828.tmp ]; then
  touch 20170828.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170828_analysis_assim analysis_assim_20170828.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170828_short_range short_range_20170828.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170828_medium_range medium_range_20170828.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170828_long_range_mem1 long_range_mem1_20170828.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170828_long_range_mem2 long_range_mem2_20170828.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170828_long_range_mem3 long_range_mem3_20170828.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170828_long_range_mem4 long_range_mem4_20170828.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170829.tmp ]; then
  touch 20170829.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170829_analysis_assim analysis_assim_20170829.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170829_short_range short_range_20170829.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170829_medium_range medium_range_20170829.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170829_long_range_mem1 long_range_mem1_20170829.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170829_long_range_mem2 long_range_mem2_20170829.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170829_long_range_mem3 long_range_mem3_20170829.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170829_long_range_mem4 long_range_mem4_20170829.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170830.tmp ]; then
  touch 20170830.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170830_analysis_assim analysis_assim_20170830.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170830_short_range short_range_20170830.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170830_medium_range medium_range_20170830.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170830_long_range_mem1 long_range_mem1_20170830.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170830_long_range_mem2 long_range_mem2_20170830.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170830_long_range_mem3 long_range_mem3_20170830.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170830_long_range_mem4 long_range_mem4_20170830.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170831.tmp ]; then
  touch 20170831.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170831_analysis_assim analysis_assim_20170831.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170831_short_range short_range_20170831.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170831_medium_range medium_range_20170831.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170831_long_range_mem1 long_range_mem1_20170831.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170831_long_range_mem2 long_range_mem2_20170831.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170831_long_range_mem3 long_range_mem3_20170831.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170831_long_range_mem4 long_range_mem4_20170831.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170901.tmp ]; then
  touch 20170901.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170901_analysis_assim analysis_assim_20170901.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170901_short_range short_range_20170901.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170901_medium_range medium_range_20170901.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170901_long_range_mem1 long_range_mem1_20170901.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170901_long_range_mem2 long_range_mem2_20170901.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170901_long_range_mem3 long_range_mem3_20170901.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170901_long_range_mem4 long_range_mem4_20170901.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170902.tmp ]; then
  touch 20170902.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170902_analysis_assim analysis_assim_20170902.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170902_short_range short_range_20170902.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170902_medium_range medium_range_20170902.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170902_long_range_mem1 long_range_mem1_20170902.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170902_long_range_mem2 long_range_mem2_20170902.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170902_long_range_mem3 long_range_mem3_20170902.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170902_long_range_mem4 long_range_mem4_20170902.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170903.tmp ]; then
  touch 20170903.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170903_analysis_assim analysis_assim_20170903.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170903_short_range short_range_20170903.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170903_medium_range medium_range_20170903.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170903_long_range_mem1 long_range_mem1_20170903.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170903_long_range_mem2 long_range_mem2_20170903.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170903_long_range_mem3 long_range_mem3_20170903.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170903_long_range_mem4 long_range_mem4_20170903.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170904.tmp ]; then
  touch 20170904.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170904_analysis_assim analysis_assim_20170904.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170904_short_range short_range_20170904.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170904_medium_range medium_range_20170904.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170904_long_range_mem1 long_range_mem1_20170904.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170904_long_range_mem2 long_range_mem2_20170904.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170904_long_range_mem3 long_range_mem3_20170904.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170904_long_range_mem4 long_range_mem4_20170904.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170905.tmp ]; then
  touch 20170905.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170905_analysis_assim analysis_assim_20170905.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170905_short_range short_range_20170905.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170905_medium_range medium_range_20170905.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170905_long_range_mem1 long_range_mem1_20170905.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170905_long_range_mem2 long_range_mem2_20170905.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170905_long_range_mem3 long_range_mem3_20170905.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170905_long_range_mem4 long_range_mem4_20170905.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170906.tmp ]; then
  touch 20170906.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170906_analysis_assim analysis_assim_20170906.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170906_short_range short_range_20170906.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170906_medium_range medium_range_20170906.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170906_long_range_mem1 long_range_mem1_20170906.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170906_long_range_mem2 long_range_mem2_20170906.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170906_long_range_mem3 long_range_mem3_20170906.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170906_long_range_mem4 long_range_mem4_20170906.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170907.tmp ]; then
  touch 20170907.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170907_analysis_assim analysis_assim_20170907.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170907_short_range short_range_20170907.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170907_medium_range medium_range_20170907.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170907_long_range_mem1 long_range_mem1_20170907.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170907_long_range_mem2 long_range_mem2_20170907.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170907_long_range_mem3 long_range_mem3_20170907.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170907_long_range_mem4 long_range_mem4_20170907.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170908.tmp ]; then
  touch 20170908.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170908_analysis_assim analysis_assim_20170908.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170908_short_range short_range_20170908.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170908_medium_range medium_range_20170908.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170908_long_range_mem1 long_range_mem1_20170908.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170908_long_range_mem2 long_range_mem2_20170908.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170908_long_range_mem3 long_range_mem3_20170908.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170908_long_range_mem4 long_range_mem4_20170908.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170909.tmp ]; then
  touch 20170909.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170909_analysis_assim analysis_assim_20170909.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170909_short_range short_range_20170909.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170909_medium_range medium_range_20170909.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170909_long_range_mem1 long_range_mem1_20170909.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170909_long_range_mem2 long_range_mem2_20170909.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170909_long_range_mem3 long_range_mem3_20170909.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170909_long_range_mem4 long_range_mem4_20170909.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170910.tmp ]; then
  touch 20170910.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170910_analysis_assim analysis_assim_20170910.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170910_short_range short_range_20170910.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170910_medium_range medium_range_20170910.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170910_long_range_mem1 long_range_mem1_20170910.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170910_long_range_mem2 long_range_mem2_20170910.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170910_long_range_mem3 long_range_mem3_20170910.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170910_long_range_mem4 long_range_mem4_20170910.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170911.tmp ]; then
  touch 20170911.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170911_analysis_assim analysis_assim_20170911.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170911_short_range short_range_20170911.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170911_medium_range medium_range_20170911.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170911_long_range_mem1 long_range_mem1_20170911.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170911_long_range_mem2 long_range_mem2_20170911.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170911_long_range_mem3 long_range_mem3_20170911.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170911_long_range_mem4 long_range_mem4_20170911.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170912.tmp ]; then
  touch 20170912.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170912_analysis_assim analysis_assim_20170912.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170912_short_range short_range_20170912.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170912_medium_range medium_range_20170912.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170912_long_range_mem1 long_range_mem1_20170912.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170912_long_range_mem2 long_range_mem2_20170912.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170912_long_range_mem3 long_range_mem3_20170912.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170912_long_range_mem4 long_range_mem4_20170912.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170913.tmp ]; then
  touch 20170913.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170913_analysis_assim analysis_assim_20170913.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170913_short_range short_range_20170913.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170913_medium_range medium_range_20170913.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170913_long_range_mem1 long_range_mem1_20170913.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170913_long_range_mem2 long_range_mem2_20170913.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170913_long_range_mem3 long_range_mem3_20170913.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170913_long_range_mem4 long_range_mem4_20170913.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170914.tmp ]; then
  touch 20170914.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170914_analysis_assim analysis_assim_20170914.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170914_short_range short_range_20170914.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170914_medium_range medium_range_20170914.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170914_long_range_mem1 long_range_mem1_20170914.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170914_long_range_mem2 long_range_mem2_20170914.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170914_long_range_mem3 long_range_mem3_20170914.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170914_long_range_mem4 long_range_mem4_20170914.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170915.tmp ]; then
  touch 20170915.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170915_analysis_assim analysis_assim_20170915.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170915_short_range short_range_20170915.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170915_medium_range medium_range_20170915.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170915_long_range_mem1 long_range_mem1_20170915.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170915_long_range_mem2 long_range_mem2_20170915.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170915_long_range_mem3 long_range_mem3_20170915.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170915_long_range_mem4 long_range_mem4_20170915.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170916.tmp ]; then
  touch 20170916.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170916_analysis_assim analysis_assim_20170916.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170916_short_range short_range_20170916.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170916_medium_range medium_range_20170916.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170916_long_range_mem1 long_range_mem1_20170916.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170916_long_range_mem2 long_range_mem2_20170916.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170916_long_range_mem3 long_range_mem3_20170916.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170916_long_range_mem4 long_range_mem4_20170916.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170917.tmp ]; then
  touch 20170917.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170917_analysis_assim analysis_assim_20170917.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170917_short_range short_range_20170917.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170917_medium_range medium_range_20170917.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170917_long_range_mem1 long_range_mem1_20170917.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170917_long_range_mem2 long_range_mem2_20170917.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170917_long_range_mem3 long_range_mem3_20170917.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170917_long_range_mem4 long_range_mem4_20170917.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170918.tmp ]; then
  touch 20170918.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170918_analysis_assim analysis_assim_20170918.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170918_short_range short_range_20170918.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170918_medium_range medium_range_20170918.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170918_long_range_mem1 long_range_mem1_20170918.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170918_long_range_mem2 long_range_mem2_20170918.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170918_long_range_mem3 long_range_mem3_20170918.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170918_long_range_mem4 long_range_mem4_20170918.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170919.tmp ]; then
  touch 20170919.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170919_analysis_assim analysis_assim_20170919.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170919_short_range short_range_20170919.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170919_medium_range medium_range_20170919.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170919_long_range_mem1 long_range_mem1_20170919.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170919_long_range_mem2 long_range_mem2_20170919.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170919_long_range_mem3 long_range_mem3_20170919.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170919_long_range_mem4 long_range_mem4_20170919.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170920.tmp ]; then
  touch 20170920.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170920_analysis_assim analysis_assim_20170920.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170920_short_range short_range_20170920.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170920_medium_range medium_range_20170920.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170920_long_range_mem1 long_range_mem1_20170920.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170920_long_range_mem2 long_range_mem2_20170920.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170920_long_range_mem3 long_range_mem3_20170920.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170920_long_range_mem4 long_range_mem4_20170920.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170921.tmp ]; then
  touch 20170921.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170921_analysis_assim analysis_assim_20170921.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170921_short_range short_range_20170921.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170921_medium_range medium_range_20170921.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170921_long_range_mem1 long_range_mem1_20170921.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170921_long_range_mem2 long_range_mem2_20170921.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170921_long_range_mem3 long_range_mem3_20170921.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170921_long_range_mem4 long_range_mem4_20170921.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170922.tmp ]; then
  touch 20170922.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170922_analysis_assim analysis_assim_20170922.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170922_short_range short_range_20170922.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170922_medium_range medium_range_20170922.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170922_long_range_mem1 long_range_mem1_20170922.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170922_long_range_mem2 long_range_mem2_20170922.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170922_long_range_mem3 long_range_mem3_20170922.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170922_long_range_mem4 long_range_mem4_20170922.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170923.tmp ]; then
  touch 20170923.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170923_analysis_assim analysis_assim_20170923.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170923_short_range short_range_20170923.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170923_medium_range medium_range_20170923.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170923_long_range_mem1 long_range_mem1_20170923.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170923_long_range_mem2 long_range_mem2_20170923.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170923_long_range_mem3 long_range_mem3_20170923.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170923_long_range_mem4 long_range_mem4_20170923.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170924.tmp ]; then
  touch 20170924.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170924_analysis_assim analysis_assim_20170924.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170924_short_range short_range_20170924.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170924_medium_range medium_range_20170924.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170924_long_range_mem1 long_range_mem1_20170924.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170924_long_range_mem2 long_range_mem2_20170924.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170924_long_range_mem3 long_range_mem3_20170924.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170924_long_range_mem4 long_range_mem4_20170924.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170925.tmp ]; then
  touch 20170925.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170925_analysis_assim analysis_assim_20170925.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170925_short_range short_range_20170925.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170925_medium_range medium_range_20170925.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170925_long_range_mem1 long_range_mem1_20170925.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170925_long_range_mem2 long_range_mem2_20170925.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170925_long_range_mem3 long_range_mem3_20170925.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170925_long_range_mem4 long_range_mem4_20170925.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170926.tmp ]; then
  touch 20170926.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170926_analysis_assim analysis_assim_20170926.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170926_short_range short_range_20170926.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170926_medium_range medium_range_20170926.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170926_long_range_mem1 long_range_mem1_20170926.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170926_long_range_mem2 long_range_mem2_20170926.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170926_long_range_mem3 long_range_mem3_20170926.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170926_long_range_mem4 long_range_mem4_20170926.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170927.tmp ]; then
  touch 20170927.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170927_analysis_assim analysis_assim_20170927.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170927_short_range short_range_20170927.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170927_medium_range medium_range_20170927.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170927_long_range_mem1 long_range_mem1_20170927.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170927_long_range_mem2 long_range_mem2_20170927.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170927_long_range_mem3 long_range_mem3_20170927.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170927_long_range_mem4 long_range_mem4_20170927.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170928.tmp ]; then
  touch 20170928.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170928_analysis_assim analysis_assim_20170928.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170928_short_range short_range_20170928.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170928_medium_range medium_range_20170928.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170928_long_range_mem1 long_range_mem1_20170928.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170928_long_range_mem2 long_range_mem2_20170928.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170928_long_range_mem3 long_range_mem3_20170928.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170928_long_range_mem4 long_range_mem4_20170928.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170929.tmp ]; then
  touch 20170929.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170929_analysis_assim analysis_assim_20170929.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170929_short_range short_range_20170929.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170929_medium_range medium_range_20170929.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170929_long_range_mem1 long_range_mem1_20170929.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170929_long_range_mem2 long_range_mem2_20170929.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170929_long_range_mem3 long_range_mem3_20170929.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170929_long_range_mem4 long_range_mem4_20170929.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20170930.tmp ]; then
  touch 20170930.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170930_analysis_assim analysis_assim_20170930.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170930_short_range short_range_20170930.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170930_medium_range medium_range_20170930.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170930_long_range_mem1 long_range_mem1_20170930.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170930_long_range_mem2 long_range_mem2_20170930.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170930_long_range_mem3 long_range_mem3_20170930.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20170930_long_range_mem4 long_range_mem4_20170930.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171001.tmp ]; then
  touch 20171001.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171001_analysis_assim analysis_assim_20171001.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171001_short_range short_range_20171001.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171001_medium_range medium_range_20171001.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171001_long_range_mem1 long_range_mem1_20171001.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171001_long_range_mem2 long_range_mem2_20171001.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171001_long_range_mem3 long_range_mem3_20171001.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171001_long_range_mem4 long_range_mem4_20171001.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171002.tmp ]; then
  touch 20171002.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171002_analysis_assim analysis_assim_20171002.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171002_short_range short_range_20171002.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171002_medium_range medium_range_20171002.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171002_long_range_mem1 long_range_mem1_20171002.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171002_long_range_mem2 long_range_mem2_20171002.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171002_long_range_mem3 long_range_mem3_20171002.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171002_long_range_mem4 long_range_mem4_20171002.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171003.tmp ]; then
  touch 20171003.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171003_analysis_assim analysis_assim_20171003.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171003_short_range short_range_20171003.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171003_medium_range medium_range_20171003.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171003_long_range_mem1 long_range_mem1_20171003.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171003_long_range_mem2 long_range_mem2_20171003.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171003_long_range_mem3 long_range_mem3_20171003.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171003_long_range_mem4 long_range_mem4_20171003.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171004.tmp ]; then
  touch 20171004.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171004_analysis_assim analysis_assim_20171004.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171004_short_range short_range_20171004.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171004_medium_range medium_range_20171004.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171004_long_range_mem1 long_range_mem1_20171004.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171004_long_range_mem2 long_range_mem2_20171004.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171004_long_range_mem3 long_range_mem3_20171004.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171004_long_range_mem4 long_range_mem4_20171004.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171005.tmp ]; then
  touch 20171005.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171005_analysis_assim analysis_assim_20171005.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171005_short_range short_range_20171005.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171005_medium_range medium_range_20171005.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171005_long_range_mem1 long_range_mem1_20171005.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171005_long_range_mem2 long_range_mem2_20171005.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171005_long_range_mem3 long_range_mem3_20171005.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171005_long_range_mem4 long_range_mem4_20171005.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171006.tmp ]; then
  touch 20171006.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171006_analysis_assim analysis_assim_20171006.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171006_short_range short_range_20171006.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171006_medium_range medium_range_20171006.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171006_long_range_mem1 long_range_mem1_20171006.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171006_long_range_mem2 long_range_mem2_20171006.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171006_long_range_mem3 long_range_mem3_20171006.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171006_long_range_mem4 long_range_mem4_20171006.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171007.tmp ]; then
  touch 20171007.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171007_analysis_assim analysis_assim_20171007.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171007_short_range short_range_20171007.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171007_medium_range medium_range_20171007.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171007_long_range_mem1 long_range_mem1_20171007.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171007_long_range_mem2 long_range_mem2_20171007.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171007_long_range_mem3 long_range_mem3_20171007.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171007_long_range_mem4 long_range_mem4_20171007.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171008.tmp ]; then
  touch 20171008.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171008_analysis_assim analysis_assim_20171008.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171008_short_range short_range_20171008.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171008_medium_range medium_range_20171008.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171008_long_range_mem1 long_range_mem1_20171008.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171008_long_range_mem2 long_range_mem2_20171008.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171008_long_range_mem3 long_range_mem3_20171008.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171008_long_range_mem4 long_range_mem4_20171008.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171009.tmp ]; then
  touch 20171009.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171009_analysis_assim analysis_assim_20171009.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171009_short_range short_range_20171009.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171009_medium_range medium_range_20171009.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171009_long_range_mem1 long_range_mem1_20171009.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171009_long_range_mem2 long_range_mem2_20171009.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171009_long_range_mem3 long_range_mem3_20171009.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171009_long_range_mem4 long_range_mem4_20171009.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171010.tmp ]; then
  touch 20171010.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171010_analysis_assim analysis_assim_20171010.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171010_short_range short_range_20171010.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171010_medium_range medium_range_20171010.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171010_long_range_mem1 long_range_mem1_20171010.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171010_long_range_mem2 long_range_mem2_20171010.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171010_long_range_mem3 long_range_mem3_20171010.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171010_long_range_mem4 long_range_mem4_20171010.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171011.tmp ]; then
  touch 20171011.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171011_analysis_assim analysis_assim_20171011.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171011_short_range short_range_20171011.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171011_medium_range medium_range_20171011.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171011_long_range_mem1 long_range_mem1_20171011.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171011_long_range_mem2 long_range_mem2_20171011.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171011_long_range_mem3 long_range_mem3_20171011.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171011_long_range_mem4 long_range_mem4_20171011.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171012.tmp ]; then
  touch 20171012.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171012_analysis_assim analysis_assim_20171012.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171012_short_range short_range_20171012.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171012_medium_range medium_range_20171012.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171012_long_range_mem1 long_range_mem1_20171012.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171012_long_range_mem2 long_range_mem2_20171012.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171012_long_range_mem3 long_range_mem3_20171012.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171012_long_range_mem4 long_range_mem4_20171012.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171013.tmp ]; then
  touch 20171013.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171013_analysis_assim analysis_assim_20171013.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171013_short_range short_range_20171013.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171013_medium_range medium_range_20171013.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171013_long_range_mem1 long_range_mem1_20171013.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171013_long_range_mem2 long_range_mem2_20171013.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171013_long_range_mem3 long_range_mem3_20171013.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171013_long_range_mem4 long_range_mem4_20171013.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171014.tmp ]; then
  touch 20171014.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171014_analysis_assim analysis_assim_20171014.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171014_short_range short_range_20171014.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171014_medium_range medium_range_20171014.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171014_long_range_mem1 long_range_mem1_20171014.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171014_long_range_mem2 long_range_mem2_20171014.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171014_long_range_mem3 long_range_mem3_20171014.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171014_long_range_mem4 long_range_mem4_20171014.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171015.tmp ]; then
  touch 20171015.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171015_analysis_assim analysis_assim_20171015.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171015_short_range short_range_20171015.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171015_medium_range medium_range_20171015.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171015_long_range_mem1 long_range_mem1_20171015.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171015_long_range_mem2 long_range_mem2_20171015.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171015_long_range_mem3 long_range_mem3_20171015.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171015_long_range_mem4 long_range_mem4_20171015.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171016.tmp ]; then
  touch 20171016.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171016_analysis_assim analysis_assim_20171016.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171016_short_range short_range_20171016.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171016_medium_range medium_range_20171016.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171016_long_range_mem1 long_range_mem1_20171016.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171016_long_range_mem2 long_range_mem2_20171016.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171016_long_range_mem3 long_range_mem3_20171016.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171016_long_range_mem4 long_range_mem4_20171016.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171017.tmp ]; then
  touch 20171017.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171017_analysis_assim analysis_assim_20171017.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171017_short_range short_range_20171017.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171017_medium_range medium_range_20171017.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171017_long_range_mem1 long_range_mem1_20171017.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171017_long_range_mem2 long_range_mem2_20171017.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171017_long_range_mem3 long_range_mem3_20171017.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171017_long_range_mem4 long_range_mem4_20171017.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171018.tmp ]; then
  touch 20171018.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171018_analysis_assim analysis_assim_20171018.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171018_short_range short_range_20171018.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171018_medium_range medium_range_20171018.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171018_long_range_mem1 long_range_mem1_20171018.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171018_long_range_mem2 long_range_mem2_20171018.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171018_long_range_mem3 long_range_mem3_20171018.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171018_long_range_mem4 long_range_mem4_20171018.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171019.tmp ]; then
  touch 20171019.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171019_analysis_assim analysis_assim_20171019.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171019_short_range short_range_20171019.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171019_medium_range medium_range_20171019.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171019_long_range_mem1 long_range_mem1_20171019.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171019_long_range_mem2 long_range_mem2_20171019.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171019_long_range_mem3 long_range_mem3_20171019.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171019_long_range_mem4 long_range_mem4_20171019.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171020.tmp ]; then
  touch 20171020.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171020_analysis_assim analysis_assim_20171020.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171020_short_range short_range_20171020.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171020_medium_range medium_range_20171020.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171020_long_range_mem1 long_range_mem1_20171020.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171020_long_range_mem2 long_range_mem2_20171020.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171020_long_range_mem3 long_range_mem3_20171020.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171020_long_range_mem4 long_range_mem4_20171020.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171021.tmp ]; then
  touch 20171021.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171021_analysis_assim analysis_assim_20171021.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171021_short_range short_range_20171021.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171021_medium_range medium_range_20171021.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171021_long_range_mem1 long_range_mem1_20171021.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171021_long_range_mem2 long_range_mem2_20171021.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171021_long_range_mem3 long_range_mem3_20171021.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171021_long_range_mem4 long_range_mem4_20171021.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171022.tmp ]; then
  touch 20171022.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171022_analysis_assim analysis_assim_20171022.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171022_short_range short_range_20171022.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171022_medium_range medium_range_20171022.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171022_long_range_mem1 long_range_mem1_20171022.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171022_long_range_mem2 long_range_mem2_20171022.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171022_long_range_mem3 long_range_mem3_20171022.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171022_long_range_mem4 long_range_mem4_20171022.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171023.tmp ]; then
  touch 20171023.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171023_analysis_assim analysis_assim_20171023.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171023_short_range short_range_20171023.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171023_medium_range medium_range_20171023.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171023_long_range_mem1 long_range_mem1_20171023.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171023_long_range_mem2 long_range_mem2_20171023.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171023_long_range_mem3 long_range_mem3_20171023.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171023_long_range_mem4 long_range_mem4_20171023.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171024.tmp ]; then
  touch 20171024.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171024_analysis_assim analysis_assim_20171024.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171024_short_range short_range_20171024.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171024_medium_range medium_range_20171024.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171024_long_range_mem1 long_range_mem1_20171024.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171024_long_range_mem2 long_range_mem2_20171024.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171024_long_range_mem3 long_range_mem3_20171024.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171024_long_range_mem4 long_range_mem4_20171024.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171025.tmp ]; then
  touch 20171025.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171025_analysis_assim analysis_assim_20171025.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171025_short_range short_range_20171025.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171025_medium_range medium_range_20171025.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171025_long_range_mem1 long_range_mem1_20171025.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171025_long_range_mem2 long_range_mem2_20171025.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171025_long_range_mem3 long_range_mem3_20171025.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171025_long_range_mem4 long_range_mem4_20171025.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171026.tmp ]; then
  touch 20171026.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171026_analysis_assim analysis_assim_20171026.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171026_short_range short_range_20171026.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171026_medium_range medium_range_20171026.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171026_long_range_mem1 long_range_mem1_20171026.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171026_long_range_mem2 long_range_mem2_20171026.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171026_long_range_mem3 long_range_mem3_20171026.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171026_long_range_mem4 long_range_mem4_20171026.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171027.tmp ]; then
  touch 20171027.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171027_analysis_assim analysis_assim_20171027.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171027_short_range short_range_20171027.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171027_medium_range medium_range_20171027.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171027_long_range_mem1 long_range_mem1_20171027.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171027_long_range_mem2 long_range_mem2_20171027.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171027_long_range_mem3 long_range_mem3_20171027.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171027_long_range_mem4 long_range_mem4_20171027.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171028.tmp ]; then
  touch 20171028.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171028_analysis_assim analysis_assim_20171028.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171028_short_range short_range_20171028.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171028_medium_range medium_range_20171028.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171028_long_range_mem1 long_range_mem1_20171028.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171028_long_range_mem2 long_range_mem2_20171028.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171028_long_range_mem3 long_range_mem3_20171028.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171028_long_range_mem4 long_range_mem4_20171028.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171029.tmp ]; then
  touch 20171029.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171029_analysis_assim analysis_assim_20171029.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171029_short_range short_range_20171029.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171029_medium_range medium_range_20171029.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171029_long_range_mem1 long_range_mem1_20171029.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171029_long_range_mem2 long_range_mem2_20171029.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171029_long_range_mem3 long_range_mem3_20171029.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171029_long_range_mem4 long_range_mem4_20171029.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171030.tmp ]; then
  touch 20171030.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171030_analysis_assim analysis_assim_20171030.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171030_short_range short_range_20171030.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171030_medium_range medium_range_20171030.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171030_long_range_mem1 long_range_mem1_20171030.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171030_long_range_mem2 long_range_mem2_20171030.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171030_long_range_mem3 long_range_mem3_20171030.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171030_long_range_mem4 long_range_mem4_20171030.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171031.tmp ]; then
  touch 20171031.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171031_analysis_assim analysis_assim_20171031.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171031_short_range short_range_20171031.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171031_medium_range medium_range_20171031.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171031_long_range_mem1 long_range_mem1_20171031.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171031_long_range_mem2 long_range_mem2_20171031.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171031_long_range_mem3 long_range_mem3_20171031.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171031_long_range_mem4 long_range_mem4_20171031.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171101.tmp ]; then
  touch 20171101.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171101_analysis_assim analysis_assim_20171101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171101_short_range short_range_20171101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171101_medium_range medium_range_20171101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171101_long_range_mem1 long_range_mem1_20171101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171101_long_range_mem2 long_range_mem2_20171101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171101_long_range_mem3 long_range_mem3_20171101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171101_long_range_mem4 long_range_mem4_20171101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171102.tmp ]; then
  touch 20171102.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171102_analysis_assim analysis_assim_20171102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171102_short_range short_range_20171102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171102_medium_range medium_range_20171102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171102_long_range_mem1 long_range_mem1_20171102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171102_long_range_mem2 long_range_mem2_20171102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171102_long_range_mem3 long_range_mem3_20171102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171102_long_range_mem4 long_range_mem4_20171102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171103.tmp ]; then
  touch 20171103.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171103_analysis_assim analysis_assim_20171103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171103_short_range short_range_20171103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171103_medium_range medium_range_20171103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171103_long_range_mem1 long_range_mem1_20171103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171103_long_range_mem2 long_range_mem2_20171103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171103_long_range_mem3 long_range_mem3_20171103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171103_long_range_mem4 long_range_mem4_20171103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171104.tmp ]; then
  touch 20171104.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171104_analysis_assim analysis_assim_20171104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171104_short_range short_range_20171104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171104_medium_range medium_range_20171104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171104_long_range_mem1 long_range_mem1_20171104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171104_long_range_mem2 long_range_mem2_20171104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171104_long_range_mem3 long_range_mem3_20171104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171104_long_range_mem4 long_range_mem4_20171104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171105.tmp ]; then
  touch 20171105.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171105_analysis_assim analysis_assim_20171105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171105_short_range short_range_20171105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171105_medium_range medium_range_20171105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171105_long_range_mem1 long_range_mem1_20171105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171105_long_range_mem2 long_range_mem2_20171105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171105_long_range_mem3 long_range_mem3_20171105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171105_long_range_mem4 long_range_mem4_20171105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171106.tmp ]; then
  touch 20171106.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171106_analysis_assim analysis_assim_20171106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171106_short_range short_range_20171106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171106_medium_range medium_range_20171106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171106_long_range_mem1 long_range_mem1_20171106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171106_long_range_mem2 long_range_mem2_20171106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171106_long_range_mem3 long_range_mem3_20171106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171106_long_range_mem4 long_range_mem4_20171106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171107.tmp ]; then
  touch 20171107.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171107_analysis_assim analysis_assim_20171107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171107_short_range short_range_20171107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171107_medium_range medium_range_20171107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171107_long_range_mem1 long_range_mem1_20171107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171107_long_range_mem2 long_range_mem2_20171107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171107_long_range_mem3 long_range_mem3_20171107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171107_long_range_mem4 long_range_mem4_20171107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171108.tmp ]; then
  touch 20171108.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171108_analysis_assim analysis_assim_20171108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171108_short_range short_range_20171108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171108_medium_range medium_range_20171108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171108_long_range_mem1 long_range_mem1_20171108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171108_long_range_mem2 long_range_mem2_20171108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171108_long_range_mem3 long_range_mem3_20171108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171108_long_range_mem4 long_range_mem4_20171108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171109.tmp ]; then
  touch 20171109.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171109_analysis_assim analysis_assim_20171109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171109_short_range short_range_20171109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171109_medium_range medium_range_20171109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171109_long_range_mem1 long_range_mem1_20171109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171109_long_range_mem2 long_range_mem2_20171109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171109_long_range_mem3 long_range_mem3_20171109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171109_long_range_mem4 long_range_mem4_20171109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171110.tmp ]; then
  touch 20171110.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171110_analysis_assim analysis_assim_20171110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171110_short_range short_range_20171110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171110_medium_range medium_range_20171110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171110_long_range_mem1 long_range_mem1_20171110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171110_long_range_mem2 long_range_mem2_20171110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171110_long_range_mem3 long_range_mem3_20171110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171110_long_range_mem4 long_range_mem4_20171110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171111.tmp ]; then
  touch 20171111.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171111_analysis_assim analysis_assim_20171111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171111_short_range short_range_20171111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171111_medium_range medium_range_20171111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171111_long_range_mem1 long_range_mem1_20171111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171111_long_range_mem2 long_range_mem2_20171111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171111_long_range_mem3 long_range_mem3_20171111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171111_long_range_mem4 long_range_mem4_20171111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171112.tmp ]; then
  touch 20171112.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171112_analysis_assim analysis_assim_20171112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171112_short_range short_range_20171112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171112_medium_range medium_range_20171112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171112_long_range_mem1 long_range_mem1_20171112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171112_long_range_mem2 long_range_mem2_20171112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171112_long_range_mem3 long_range_mem3_20171112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171112_long_range_mem4 long_range_mem4_20171112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171113.tmp ]; then
  touch 20171113.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171113_analysis_assim analysis_assim_20171113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171113_short_range short_range_20171113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171113_medium_range medium_range_20171113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171113_long_range_mem1 long_range_mem1_20171113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171113_long_range_mem2 long_range_mem2_20171113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171113_long_range_mem3 long_range_mem3_20171113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171113_long_range_mem4 long_range_mem4_20171113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171114.tmp ]; then
  touch 20171114.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171114_analysis_assim analysis_assim_20171114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171114_short_range short_range_20171114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171114_medium_range medium_range_20171114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171114_long_range_mem1 long_range_mem1_20171114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171114_long_range_mem2 long_range_mem2_20171114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171114_long_range_mem3 long_range_mem3_20171114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171114_long_range_mem4 long_range_mem4_20171114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171115.tmp ]; then
  touch 20171115.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171115_analysis_assim analysis_assim_20171115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171115_short_range short_range_20171115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171115_medium_range medium_range_20171115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171115_long_range_mem1 long_range_mem1_20171115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171115_long_range_mem2 long_range_mem2_20171115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171115_long_range_mem3 long_range_mem3_20171115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171115_long_range_mem4 long_range_mem4_20171115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171116.tmp ]; then
  touch 20171116.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171116_analysis_assim analysis_assim_20171116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171116_short_range short_range_20171116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171116_medium_range medium_range_20171116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171116_long_range_mem1 long_range_mem1_20171116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171116_long_range_mem2 long_range_mem2_20171116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171116_long_range_mem3 long_range_mem3_20171116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171116_long_range_mem4 long_range_mem4_20171116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171117.tmp ]; then
  touch 20171117.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171117_analysis_assim analysis_assim_20171117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171117_short_range short_range_20171117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171117_medium_range medium_range_20171117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171117_long_range_mem1 long_range_mem1_20171117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171117_long_range_mem2 long_range_mem2_20171117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171117_long_range_mem3 long_range_mem3_20171117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171117_long_range_mem4 long_range_mem4_20171117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171118.tmp ]; then
  touch 20171118.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171118_analysis_assim analysis_assim_20171118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171118_short_range short_range_20171118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171118_medium_range medium_range_20171118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171118_long_range_mem1 long_range_mem1_20171118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171118_long_range_mem2 long_range_mem2_20171118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171118_long_range_mem3 long_range_mem3_20171118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171118_long_range_mem4 long_range_mem4_20171118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171119.tmp ]; then
  touch 20171119.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171119_analysis_assim analysis_assim_20171119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171119_short_range short_range_20171119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171119_medium_range medium_range_20171119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171119_long_range_mem1 long_range_mem1_20171119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171119_long_range_mem2 long_range_mem2_20171119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171119_long_range_mem3 long_range_mem3_20171119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171119_long_range_mem4 long_range_mem4_20171119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171120.tmp ]; then
  touch 20171120.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171120_analysis_assim analysis_assim_20171120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171120_short_range short_range_20171120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171120_medium_range medium_range_20171120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171120_long_range_mem1 long_range_mem1_20171120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171120_long_range_mem2 long_range_mem2_20171120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171120_long_range_mem3 long_range_mem3_20171120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171120_long_range_mem4 long_range_mem4_20171120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171121.tmp ]; then
  touch 20171121.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171121_analysis_assim analysis_assim_20171121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171121_short_range short_range_20171121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171121_medium_range medium_range_20171121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171121_long_range_mem1 long_range_mem1_20171121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171121_long_range_mem2 long_range_mem2_20171121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171121_long_range_mem3 long_range_mem3_20171121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171121_long_range_mem4 long_range_mem4_20171121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171122.tmp ]; then
  touch 20171122.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171122_analysis_assim analysis_assim_20171122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171122_short_range short_range_20171122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171122_medium_range medium_range_20171122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171122_long_range_mem1 long_range_mem1_20171122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171122_long_range_mem2 long_range_mem2_20171122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171122_long_range_mem3 long_range_mem3_20171122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171122_long_range_mem4 long_range_mem4_20171122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171123.tmp ]; then
  touch 20171123.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171123_analysis_assim analysis_assim_20171123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171123_short_range short_range_20171123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171123_medium_range medium_range_20171123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171123_long_range_mem1 long_range_mem1_20171123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171123_long_range_mem2 long_range_mem2_20171123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171123_long_range_mem3 long_range_mem3_20171123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171123_long_range_mem4 long_range_mem4_20171123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171124.tmp ]; then
  touch 20171124.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171124_analysis_assim analysis_assim_20171124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171124_short_range short_range_20171124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171124_medium_range medium_range_20171124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171124_long_range_mem1 long_range_mem1_20171124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171124_long_range_mem2 long_range_mem2_20171124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171124_long_range_mem3 long_range_mem3_20171124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171124_long_range_mem4 long_range_mem4_20171124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171125.tmp ]; then
  touch 20171125.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171125_analysis_assim analysis_assim_20171125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171125_short_range short_range_20171125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171125_medium_range medium_range_20171125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171125_long_range_mem1 long_range_mem1_20171125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171125_long_range_mem2 long_range_mem2_20171125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171125_long_range_mem3 long_range_mem3_20171125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171125_long_range_mem4 long_range_mem4_20171125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171126.tmp ]; then
  touch 20171126.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171126_analysis_assim analysis_assim_20171126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171126_short_range short_range_20171126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171126_medium_range medium_range_20171126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171126_long_range_mem1 long_range_mem1_20171126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171126_long_range_mem2 long_range_mem2_20171126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171126_long_range_mem3 long_range_mem3_20171126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171126_long_range_mem4 long_range_mem4_20171126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171127.tmp ]; then
  touch 20171127.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171127_analysis_assim analysis_assim_20171127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171127_short_range short_range_20171127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171127_medium_range medium_range_20171127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171127_long_range_mem1 long_range_mem1_20171127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171127_long_range_mem2 long_range_mem2_20171127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171127_long_range_mem3 long_range_mem3_20171127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171127_long_range_mem4 long_range_mem4_20171127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171128.tmp ]; then
  touch 20171128.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171128_analysis_assim analysis_assim_20171128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171128_short_range short_range_20171128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171128_medium_range medium_range_20171128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171128_long_range_mem1 long_range_mem1_20171128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171128_long_range_mem2 long_range_mem2_20171128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171128_long_range_mem3 long_range_mem3_20171128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171128_long_range_mem4 long_range_mem4_20171128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171129.tmp ]; then
  touch 20171129.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171129_analysis_assim analysis_assim_20171129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171129_short_range short_range_20171129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171129_medium_range medium_range_20171129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171129_long_range_mem1 long_range_mem1_20171129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171129_long_range_mem2 long_range_mem2_20171129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171129_long_range_mem3 long_range_mem3_20171129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171129_long_range_mem4 long_range_mem4_20171129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171130.tmp ]; then
  touch 20171130.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171130_analysis_assim analysis_assim_20171130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171130_short_range short_range_20171130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171130_medium_range medium_range_20171130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171130_long_range_mem1 long_range_mem1_20171130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171130_long_range_mem2 long_range_mem2_20171130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171130_long_range_mem3 long_range_mem3_20171130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171130_long_range_mem4 long_range_mem4_20171130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171201.tmp ]; then
  touch 20171201.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171201_analysis_assim analysis_assim_20171201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171201_short_range short_range_20171201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171201_medium_range medium_range_20171201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171201_long_range_mem1 long_range_mem1_20171201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171201_long_range_mem2 long_range_mem2_20171201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171201_long_range_mem3 long_range_mem3_20171201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171201_long_range_mem4 long_range_mem4_20171201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171202.tmp ]; then
  touch 20171202.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171202_analysis_assim analysis_assim_20171202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171202_short_range short_range_20171202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171202_medium_range medium_range_20171202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171202_long_range_mem1 long_range_mem1_20171202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171202_long_range_mem2 long_range_mem2_20171202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171202_long_range_mem3 long_range_mem3_20171202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171202_long_range_mem4 long_range_mem4_20171202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171203.tmp ]; then
  touch 20171203.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171203_analysis_assim analysis_assim_20171203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171203_short_range short_range_20171203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171203_medium_range medium_range_20171203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171203_long_range_mem1 long_range_mem1_20171203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171203_long_range_mem2 long_range_mem2_20171203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171203_long_range_mem3 long_range_mem3_20171203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171203_long_range_mem4 long_range_mem4_20171203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171204.tmp ]; then
  touch 20171204.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171204_analysis_assim analysis_assim_20171204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171204_short_range short_range_20171204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171204_medium_range medium_range_20171204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171204_long_range_mem1 long_range_mem1_20171204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171204_long_range_mem2 long_range_mem2_20171204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171204_long_range_mem3 long_range_mem3_20171204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171204_long_range_mem4 long_range_mem4_20171204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171205.tmp ]; then
  touch 20171205.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171205_analysis_assim analysis_assim_20171205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171205_short_range short_range_20171205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171205_medium_range medium_range_20171205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171205_long_range_mem1 long_range_mem1_20171205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171205_long_range_mem2 long_range_mem2_20171205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171205_long_range_mem3 long_range_mem3_20171205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171205_long_range_mem4 long_range_mem4_20171205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171206.tmp ]; then
  touch 20171206.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171206_analysis_assim analysis_assim_20171206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171206_short_range short_range_20171206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171206_medium_range medium_range_20171206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171206_long_range_mem1 long_range_mem1_20171206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171206_long_range_mem2 long_range_mem2_20171206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171206_long_range_mem3 long_range_mem3_20171206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171206_long_range_mem4 long_range_mem4_20171206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171207.tmp ]; then
  touch 20171207.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171207_analysis_assim analysis_assim_20171207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171207_short_range short_range_20171207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171207_medium_range medium_range_20171207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171207_long_range_mem1 long_range_mem1_20171207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171207_long_range_mem2 long_range_mem2_20171207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171207_long_range_mem3 long_range_mem3_20171207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171207_long_range_mem4 long_range_mem4_20171207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171208.tmp ]; then
  touch 20171208.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171208_analysis_assim analysis_assim_20171208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171208_short_range short_range_20171208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171208_medium_range medium_range_20171208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171208_long_range_mem1 long_range_mem1_20171208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171208_long_range_mem2 long_range_mem2_20171208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171208_long_range_mem3 long_range_mem3_20171208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171208_long_range_mem4 long_range_mem4_20171208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171209.tmp ]; then
  touch 20171209.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171209_analysis_assim analysis_assim_20171209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171209_short_range short_range_20171209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171209_medium_range medium_range_20171209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171209_long_range_mem1 long_range_mem1_20171209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171209_long_range_mem2 long_range_mem2_20171209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171209_long_range_mem3 long_range_mem3_20171209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171209_long_range_mem4 long_range_mem4_20171209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171210.tmp ]; then
  touch 20171210.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171210_analysis_assim analysis_assim_20171210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171210_short_range short_range_20171210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171210_medium_range medium_range_20171210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171210_long_range_mem1 long_range_mem1_20171210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171210_long_range_mem2 long_range_mem2_20171210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171210_long_range_mem3 long_range_mem3_20171210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171210_long_range_mem4 long_range_mem4_20171210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171211.tmp ]; then
  touch 20171211.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171211_analysis_assim analysis_assim_20171211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171211_short_range short_range_20171211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171211_medium_range medium_range_20171211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171211_long_range_mem1 long_range_mem1_20171211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171211_long_range_mem2 long_range_mem2_20171211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171211_long_range_mem3 long_range_mem3_20171211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171211_long_range_mem4 long_range_mem4_20171211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171212.tmp ]; then
  touch 20171212.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171212_analysis_assim analysis_assim_20171212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171212_short_range short_range_20171212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171212_medium_range medium_range_20171212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171212_long_range_mem1 long_range_mem1_20171212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171212_long_range_mem2 long_range_mem2_20171212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171212_long_range_mem3 long_range_mem3_20171212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171212_long_range_mem4 long_range_mem4_20171212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171213.tmp ]; then
  touch 20171213.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171213_analysis_assim analysis_assim_20171213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171213_short_range short_range_20171213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171213_medium_range medium_range_20171213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171213_long_range_mem1 long_range_mem1_20171213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171213_long_range_mem2 long_range_mem2_20171213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171213_long_range_mem3 long_range_mem3_20171213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171213_long_range_mem4 long_range_mem4_20171213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171214.tmp ]; then
  touch 20171214.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171214_analysis_assim analysis_assim_20171214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171214_short_range short_range_20171214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171214_medium_range medium_range_20171214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171214_long_range_mem1 long_range_mem1_20171214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171214_long_range_mem2 long_range_mem2_20171214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171214_long_range_mem3 long_range_mem3_20171214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171214_long_range_mem4 long_range_mem4_20171214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171215.tmp ]; then
  touch 20171215.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171215_analysis_assim analysis_assim_20171215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171215_short_range short_range_20171215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171215_medium_range medium_range_20171215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171215_long_range_mem1 long_range_mem1_20171215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171215_long_range_mem2 long_range_mem2_20171215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171215_long_range_mem3 long_range_mem3_20171215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171215_long_range_mem4 long_range_mem4_20171215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171216.tmp ]; then
  touch 20171216.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171216_analysis_assim analysis_assim_20171216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171216_short_range short_range_20171216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171216_medium_range medium_range_20171216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171216_long_range_mem1 long_range_mem1_20171216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171216_long_range_mem2 long_range_mem2_20171216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171216_long_range_mem3 long_range_mem3_20171216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171216_long_range_mem4 long_range_mem4_20171216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171217.tmp ]; then
  touch 20171217.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171217_analysis_assim analysis_assim_20171217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171217_short_range short_range_20171217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171217_medium_range medium_range_20171217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171217_long_range_mem1 long_range_mem1_20171217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171217_long_range_mem2 long_range_mem2_20171217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171217_long_range_mem3 long_range_mem3_20171217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171217_long_range_mem4 long_range_mem4_20171217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171218.tmp ]; then
  touch 20171218.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171218_analysis_assim analysis_assim_20171218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171218_short_range short_range_20171218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171218_medium_range medium_range_20171218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171218_long_range_mem1 long_range_mem1_20171218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171218_long_range_mem2 long_range_mem2_20171218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171218_long_range_mem3 long_range_mem3_20171218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171218_long_range_mem4 long_range_mem4_20171218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171219.tmp ]; then
  touch 20171219.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171219_analysis_assim analysis_assim_20171219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171219_short_range short_range_20171219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171219_medium_range medium_range_20171219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171219_long_range_mem1 long_range_mem1_20171219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171219_long_range_mem2 long_range_mem2_20171219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171219_long_range_mem3 long_range_mem3_20171219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171219_long_range_mem4 long_range_mem4_20171219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171220.tmp ]; then
  touch 20171220.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171220_analysis_assim analysis_assim_20171220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171220_short_range short_range_20171220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171220_medium_range medium_range_20171220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171220_long_range_mem1 long_range_mem1_20171220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171220_long_range_mem2 long_range_mem2_20171220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171220_long_range_mem3 long_range_mem3_20171220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171220_long_range_mem4 long_range_mem4_20171220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171221.tmp ]; then
  touch 20171221.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171221_analysis_assim analysis_assim_20171221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171221_short_range short_range_20171221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171221_medium_range medium_range_20171221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171221_long_range_mem1 long_range_mem1_20171221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171221_long_range_mem2 long_range_mem2_20171221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171221_long_range_mem3 long_range_mem3_20171221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171221_long_range_mem4 long_range_mem4_20171221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171222.tmp ]; then
  touch 20171222.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171222_analysis_assim analysis_assim_20171222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171222_short_range short_range_20171222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171222_medium_range medium_range_20171222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171222_long_range_mem1 long_range_mem1_20171222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171222_long_range_mem2 long_range_mem2_20171222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171222_long_range_mem3 long_range_mem3_20171222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171222_long_range_mem4 long_range_mem4_20171222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171223.tmp ]; then
  touch 20171223.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171223_analysis_assim analysis_assim_20171223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171223_short_range short_range_20171223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171223_medium_range medium_range_20171223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171223_long_range_mem1 long_range_mem1_20171223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171223_long_range_mem2 long_range_mem2_20171223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171223_long_range_mem3 long_range_mem3_20171223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171223_long_range_mem4 long_range_mem4_20171223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171224.tmp ]; then
  touch 20171224.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171224_analysis_assim analysis_assim_20171224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171224_short_range short_range_20171224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171224_medium_range medium_range_20171224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171224_long_range_mem1 long_range_mem1_20171224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171224_long_range_mem2 long_range_mem2_20171224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171224_long_range_mem3 long_range_mem3_20171224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171224_long_range_mem4 long_range_mem4_20171224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171225.tmp ]; then
  touch 20171225.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171225_analysis_assim analysis_assim_20171225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171225_short_range short_range_20171225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171225_medium_range medium_range_20171225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171225_long_range_mem1 long_range_mem1_20171225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171225_long_range_mem2 long_range_mem2_20171225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171225_long_range_mem3 long_range_mem3_20171225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171225_long_range_mem4 long_range_mem4_20171225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171226.tmp ]; then
  touch 20171226.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171226_analysis_assim analysis_assim_20171226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171226_short_range short_range_20171226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171226_medium_range medium_range_20171226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171226_long_range_mem1 long_range_mem1_20171226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171226_long_range_mem2 long_range_mem2_20171226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171226_long_range_mem3 long_range_mem3_20171226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171226_long_range_mem4 long_range_mem4_20171226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171227.tmp ]; then
  touch 20171227.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171227_analysis_assim analysis_assim_20171227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171227_short_range short_range_20171227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171227_medium_range medium_range_20171227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171227_long_range_mem1 long_range_mem1_20171227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171227_long_range_mem2 long_range_mem2_20171227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171227_long_range_mem3 long_range_mem3_20171227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171227_long_range_mem4 long_range_mem4_20171227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171228.tmp ]; then
  touch 20171228.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171228_analysis_assim analysis_assim_20171228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171228_short_range short_range_20171228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171228_medium_range medium_range_20171228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171228_long_range_mem1 long_range_mem1_20171228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171228_long_range_mem2 long_range_mem2_20171228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171228_long_range_mem3 long_range_mem3_20171228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171228_long_range_mem4 long_range_mem4_20171228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171229.tmp ]; then
  touch 20171229.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171229_analysis_assim analysis_assim_20171229.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171229_short_range short_range_20171229.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171229_medium_range medium_range_20171229.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171229_long_range_mem1 long_range_mem1_20171229.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171229_long_range_mem2 long_range_mem2_20171229.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171229_long_range_mem3 long_range_mem3_20171229.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171229_long_range_mem4 long_range_mem4_20171229.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171230.tmp ]; then
  touch 20171230.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171230_analysis_assim analysis_assim_20171230.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171230_short_range short_range_20171230.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171230_medium_range medium_range_20171230.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171230_long_range_mem1 long_range_mem1_20171230.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171230_long_range_mem2 long_range_mem2_20171230.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171230_long_range_mem3 long_range_mem3_20171230.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171230_long_range_mem4 long_range_mem4_20171230.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20171231.tmp ]; then
  touch 20171231.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171231_analysis_assim analysis_assim_20171231.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171231_short_range short_range_20171231.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171231_medium_range medium_range_20171231.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171231_long_range_mem1 long_range_mem1_20171231.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171231_long_range_mem2 long_range_mem2_20171231.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171231_long_range_mem3 long_range_mem3_20171231.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20171231_long_range_mem4 long_range_mem4_20171231.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180101.tmp ]; then
  touch 20180101.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180101_analysis_assim analysis_assim_20180101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180101_short_range short_range_20180101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180101_medium_range medium_range_20180101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180101_long_range_mem1 long_range_mem1_20180101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180101_long_range_mem2 long_range_mem2_20180101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180101_long_range_mem3 long_range_mem3_20180101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180101_long_range_mem4 long_range_mem4_20180101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180102.tmp ]; then
  touch 20180102.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180102_analysis_assim analysis_assim_20180102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180102_short_range short_range_20180102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180102_medium_range medium_range_20180102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180102_long_range_mem1 long_range_mem1_20180102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180102_long_range_mem2 long_range_mem2_20180102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180102_long_range_mem3 long_range_mem3_20180102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180102_long_range_mem4 long_range_mem4_20180102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180103.tmp ]; then
  touch 20180103.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180103_analysis_assim analysis_assim_20180103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180103_short_range short_range_20180103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180103_medium_range medium_range_20180103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180103_long_range_mem1 long_range_mem1_20180103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180103_long_range_mem2 long_range_mem2_20180103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180103_long_range_mem3 long_range_mem3_20180103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180103_long_range_mem4 long_range_mem4_20180103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180104.tmp ]; then
  touch 20180104.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180104_analysis_assim analysis_assim_20180104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180104_short_range short_range_20180104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180104_medium_range medium_range_20180104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180104_long_range_mem1 long_range_mem1_20180104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180104_long_range_mem2 long_range_mem2_20180104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180104_long_range_mem3 long_range_mem3_20180104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180104_long_range_mem4 long_range_mem4_20180104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180105.tmp ]; then
  touch 20180105.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180105_analysis_assim analysis_assim_20180105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180105_short_range short_range_20180105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180105_medium_range medium_range_20180105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180105_long_range_mem1 long_range_mem1_20180105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180105_long_range_mem2 long_range_mem2_20180105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180105_long_range_mem3 long_range_mem3_20180105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180105_long_range_mem4 long_range_mem4_20180105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180106.tmp ]; then
  touch 20180106.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180106_analysis_assim analysis_assim_20180106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180106_short_range short_range_20180106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180106_medium_range medium_range_20180106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180106_long_range_mem1 long_range_mem1_20180106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180106_long_range_mem2 long_range_mem2_20180106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180106_long_range_mem3 long_range_mem3_20180106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180106_long_range_mem4 long_range_mem4_20180106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180107.tmp ]; then
  touch 20180107.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180107_analysis_assim analysis_assim_20180107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180107_short_range short_range_20180107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180107_medium_range medium_range_20180107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180107_long_range_mem1 long_range_mem1_20180107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180107_long_range_mem2 long_range_mem2_20180107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180107_long_range_mem3 long_range_mem3_20180107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180107_long_range_mem4 long_range_mem4_20180107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180108.tmp ]; then
  touch 20180108.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180108_analysis_assim analysis_assim_20180108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180108_short_range short_range_20180108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180108_medium_range medium_range_20180108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180108_long_range_mem1 long_range_mem1_20180108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180108_long_range_mem2 long_range_mem2_20180108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180108_long_range_mem3 long_range_mem3_20180108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180108_long_range_mem4 long_range_mem4_20180108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180109.tmp ]; then
  touch 20180109.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180109_analysis_assim analysis_assim_20180109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180109_short_range short_range_20180109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180109_medium_range medium_range_20180109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180109_long_range_mem1 long_range_mem1_20180109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180109_long_range_mem2 long_range_mem2_20180109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180109_long_range_mem3 long_range_mem3_20180109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180109_long_range_mem4 long_range_mem4_20180109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180110.tmp ]; then
  touch 20180110.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180110_analysis_assim analysis_assim_20180110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180110_short_range short_range_20180110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180110_medium_range medium_range_20180110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180110_long_range_mem1 long_range_mem1_20180110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180110_long_range_mem2 long_range_mem2_20180110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180110_long_range_mem3 long_range_mem3_20180110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180110_long_range_mem4 long_range_mem4_20180110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180111.tmp ]; then
  touch 20180111.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180111_analysis_assim analysis_assim_20180111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180111_short_range short_range_20180111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180111_medium_range medium_range_20180111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180111_long_range_mem1 long_range_mem1_20180111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180111_long_range_mem2 long_range_mem2_20180111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180111_long_range_mem3 long_range_mem3_20180111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180111_long_range_mem4 long_range_mem4_20180111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180112.tmp ]; then
  touch 20180112.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180112_analysis_assim analysis_assim_20180112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180112_short_range short_range_20180112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180112_medium_range medium_range_20180112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180112_long_range_mem1 long_range_mem1_20180112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180112_long_range_mem2 long_range_mem2_20180112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180112_long_range_mem3 long_range_mem3_20180112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180112_long_range_mem4 long_range_mem4_20180112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180113.tmp ]; then
  touch 20180113.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180113_analysis_assim analysis_assim_20180113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180113_short_range short_range_20180113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180113_medium_range medium_range_20180113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180113_long_range_mem1 long_range_mem1_20180113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180113_long_range_mem2 long_range_mem2_20180113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180113_long_range_mem3 long_range_mem3_20180113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180113_long_range_mem4 long_range_mem4_20180113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180114.tmp ]; then
  touch 20180114.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180114_analysis_assim analysis_assim_20180114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180114_short_range short_range_20180114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180114_medium_range medium_range_20180114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180114_long_range_mem1 long_range_mem1_20180114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180114_long_range_mem2 long_range_mem2_20180114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180114_long_range_mem3 long_range_mem3_20180114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180114_long_range_mem4 long_range_mem4_20180114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180115.tmp ]; then
  touch 20180115.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180115_analysis_assim analysis_assim_20180115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180115_short_range short_range_20180115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180115_medium_range medium_range_20180115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180115_long_range_mem1 long_range_mem1_20180115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180115_long_range_mem2 long_range_mem2_20180115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180115_long_range_mem3 long_range_mem3_20180115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180115_long_range_mem4 long_range_mem4_20180115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180116.tmp ]; then
  touch 20180116.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180116_analysis_assim analysis_assim_20180116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180116_short_range short_range_20180116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180116_medium_range medium_range_20180116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180116_long_range_mem1 long_range_mem1_20180116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180116_long_range_mem2 long_range_mem2_20180116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180116_long_range_mem3 long_range_mem3_20180116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180116_long_range_mem4 long_range_mem4_20180116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180117.tmp ]; then
  touch 20180117.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180117_analysis_assim analysis_assim_20180117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180117_short_range short_range_20180117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180117_medium_range medium_range_20180117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180117_long_range_mem1 long_range_mem1_20180117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180117_long_range_mem2 long_range_mem2_20180117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180117_long_range_mem3 long_range_mem3_20180117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180117_long_range_mem4 long_range_mem4_20180117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180118.tmp ]; then
  touch 20180118.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180118_analysis_assim analysis_assim_20180118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180118_short_range short_range_20180118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180118_medium_range medium_range_20180118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180118_long_range_mem1 long_range_mem1_20180118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180118_long_range_mem2 long_range_mem2_20180118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180118_long_range_mem3 long_range_mem3_20180118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180118_long_range_mem4 long_range_mem4_20180118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180119.tmp ]; then
  touch 20180119.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180119_analysis_assim analysis_assim_20180119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180119_short_range short_range_20180119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180119_medium_range medium_range_20180119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180119_long_range_mem1 long_range_mem1_20180119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180119_long_range_mem2 long_range_mem2_20180119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180119_long_range_mem3 long_range_mem3_20180119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180119_long_range_mem4 long_range_mem4_20180119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180120.tmp ]; then
  touch 20180120.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180120_analysis_assim analysis_assim_20180120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180120_short_range short_range_20180120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180120_medium_range medium_range_20180120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180120_long_range_mem1 long_range_mem1_20180120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180120_long_range_mem2 long_range_mem2_20180120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180120_long_range_mem3 long_range_mem3_20180120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180120_long_range_mem4 long_range_mem4_20180120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180121.tmp ]; then
  touch 20180121.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180121_analysis_assim analysis_assim_20180121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180121_short_range short_range_20180121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180121_medium_range medium_range_20180121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180121_long_range_mem1 long_range_mem1_20180121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180121_long_range_mem2 long_range_mem2_20180121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180121_long_range_mem3 long_range_mem3_20180121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180121_long_range_mem4 long_range_mem4_20180121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180122.tmp ]; then
  touch 20180122.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180122_analysis_assim analysis_assim_20180122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180122_short_range short_range_20180122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180122_medium_range medium_range_20180122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180122_long_range_mem1 long_range_mem1_20180122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180122_long_range_mem2 long_range_mem2_20180122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180122_long_range_mem3 long_range_mem3_20180122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180122_long_range_mem4 long_range_mem4_20180122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180123.tmp ]; then
  touch 20180123.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180123_analysis_assim analysis_assim_20180123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180123_short_range short_range_20180123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180123_medium_range medium_range_20180123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180123_long_range_mem1 long_range_mem1_20180123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180123_long_range_mem2 long_range_mem2_20180123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180123_long_range_mem3 long_range_mem3_20180123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180123_long_range_mem4 long_range_mem4_20180123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180124.tmp ]; then
  touch 20180124.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180124_analysis_assim analysis_assim_20180124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180124_short_range short_range_20180124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180124_medium_range medium_range_20180124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180124_long_range_mem1 long_range_mem1_20180124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180124_long_range_mem2 long_range_mem2_20180124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180124_long_range_mem3 long_range_mem3_20180124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180124_long_range_mem4 long_range_mem4_20180124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180125.tmp ]; then
  touch 20180125.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180125_analysis_assim analysis_assim_20180125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180125_short_range short_range_20180125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180125_medium_range medium_range_20180125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180125_long_range_mem1 long_range_mem1_20180125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180125_long_range_mem2 long_range_mem2_20180125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180125_long_range_mem3 long_range_mem3_20180125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180125_long_range_mem4 long_range_mem4_20180125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180126.tmp ]; then
  touch 20180126.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180126_analysis_assim analysis_assim_20180126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180126_short_range short_range_20180126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180126_medium_range medium_range_20180126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180126_long_range_mem1 long_range_mem1_20180126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180126_long_range_mem2 long_range_mem2_20180126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180126_long_range_mem3 long_range_mem3_20180126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180126_long_range_mem4 long_range_mem4_20180126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180127.tmp ]; then
  touch 20180127.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180127_analysis_assim analysis_assim_20180127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180127_short_range short_range_20180127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180127_medium_range medium_range_20180127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180127_long_range_mem1 long_range_mem1_20180127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180127_long_range_mem2 long_range_mem2_20180127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180127_long_range_mem3 long_range_mem3_20180127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180127_long_range_mem4 long_range_mem4_20180127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180128.tmp ]; then
  touch 20180128.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180128_analysis_assim analysis_assim_20180128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180128_short_range short_range_20180128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180128_medium_range medium_range_20180128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180128_long_range_mem1 long_range_mem1_20180128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180128_long_range_mem2 long_range_mem2_20180128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180128_long_range_mem3 long_range_mem3_20180128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180128_long_range_mem4 long_range_mem4_20180128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180129.tmp ]; then
  touch 20180129.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180129_analysis_assim analysis_assim_20180129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180129_short_range short_range_20180129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180129_medium_range medium_range_20180129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180129_long_range_mem1 long_range_mem1_20180129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180129_long_range_mem2 long_range_mem2_20180129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180129_long_range_mem3 long_range_mem3_20180129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180129_long_range_mem4 long_range_mem4_20180129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180130.tmp ]; then
  touch 20180130.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180130_analysis_assim analysis_assim_20180130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180130_short_range short_range_20180130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180130_medium_range medium_range_20180130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180130_long_range_mem1 long_range_mem1_20180130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180130_long_range_mem2 long_range_mem2_20180130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180130_long_range_mem3 long_range_mem3_20180130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180130_long_range_mem4 long_range_mem4_20180130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180131.tmp ]; then
  touch 20180131.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180131_analysis_assim analysis_assim_20180131.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180131_short_range short_range_20180131.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180131_medium_range medium_range_20180131.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180131_long_range_mem1 long_range_mem1_20180131.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180131_long_range_mem2 long_range_mem2_20180131.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180131_long_range_mem3 long_range_mem3_20180131.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180131_long_range_mem4 long_range_mem4_20180131.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180201.tmp ]; then
  touch 20180201.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180201_analysis_assim analysis_assim_20180201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180201_short_range short_range_20180201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180201_medium_range medium_range_20180201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180201_long_range_mem1 long_range_mem1_20180201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180201_long_range_mem2 long_range_mem2_20180201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180201_long_range_mem3 long_range_mem3_20180201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180201_long_range_mem4 long_range_mem4_20180201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180202.tmp ]; then
  touch 20180202.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180202_analysis_assim analysis_assim_20180202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180202_short_range short_range_20180202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180202_medium_range medium_range_20180202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180202_long_range_mem1 long_range_mem1_20180202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180202_long_range_mem2 long_range_mem2_20180202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180202_long_range_mem3 long_range_mem3_20180202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180202_long_range_mem4 long_range_mem4_20180202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180203.tmp ]; then
  touch 20180203.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180203_analysis_assim analysis_assim_20180203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180203_short_range short_range_20180203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180203_medium_range medium_range_20180203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180203_long_range_mem1 long_range_mem1_20180203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180203_long_range_mem2 long_range_mem2_20180203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180203_long_range_mem3 long_range_mem3_20180203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180203_long_range_mem4 long_range_mem4_20180203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180204.tmp ]; then
  touch 20180204.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180204_analysis_assim analysis_assim_20180204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180204_short_range short_range_20180204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180204_medium_range medium_range_20180204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180204_long_range_mem1 long_range_mem1_20180204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180204_long_range_mem2 long_range_mem2_20180204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180204_long_range_mem3 long_range_mem3_20180204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180204_long_range_mem4 long_range_mem4_20180204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180205.tmp ]; then
  touch 20180205.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180205_analysis_assim analysis_assim_20180205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180205_short_range short_range_20180205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180205_medium_range medium_range_20180205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180205_long_range_mem1 long_range_mem1_20180205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180205_long_range_mem2 long_range_mem2_20180205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180205_long_range_mem3 long_range_mem3_20180205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180205_long_range_mem4 long_range_mem4_20180205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180206.tmp ]; then
  touch 20180206.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180206_analysis_assim analysis_assim_20180206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180206_short_range short_range_20180206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180206_medium_range medium_range_20180206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180206_long_range_mem1 long_range_mem1_20180206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180206_long_range_mem2 long_range_mem2_20180206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180206_long_range_mem3 long_range_mem3_20180206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180206_long_range_mem4 long_range_mem4_20180206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180207.tmp ]; then
  touch 20180207.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180207_analysis_assim analysis_assim_20180207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180207_short_range short_range_20180207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180207_medium_range medium_range_20180207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180207_long_range_mem1 long_range_mem1_20180207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180207_long_range_mem2 long_range_mem2_20180207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180207_long_range_mem3 long_range_mem3_20180207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180207_long_range_mem4 long_range_mem4_20180207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180208.tmp ]; then
  touch 20180208.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180208_analysis_assim analysis_assim_20180208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180208_short_range short_range_20180208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180208_medium_range medium_range_20180208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180208_long_range_mem1 long_range_mem1_20180208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180208_long_range_mem2 long_range_mem2_20180208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180208_long_range_mem3 long_range_mem3_20180208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180208_long_range_mem4 long_range_mem4_20180208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180209.tmp ]; then
  touch 20180209.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180209_analysis_assim analysis_assim_20180209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180209_short_range short_range_20180209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180209_medium_range medium_range_20180209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180209_long_range_mem1 long_range_mem1_20180209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180209_long_range_mem2 long_range_mem2_20180209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180209_long_range_mem3 long_range_mem3_20180209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180209_long_range_mem4 long_range_mem4_20180209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180210.tmp ]; then
  touch 20180210.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180210_analysis_assim analysis_assim_20180210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180210_short_range short_range_20180210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180210_medium_range medium_range_20180210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180210_long_range_mem1 long_range_mem1_20180210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180210_long_range_mem2 long_range_mem2_20180210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180210_long_range_mem3 long_range_mem3_20180210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180210_long_range_mem4 long_range_mem4_20180210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180211.tmp ]; then
  touch 20180211.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180211_analysis_assim analysis_assim_20180211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180211_short_range short_range_20180211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180211_medium_range medium_range_20180211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180211_long_range_mem1 long_range_mem1_20180211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180211_long_range_mem2 long_range_mem2_20180211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180211_long_range_mem3 long_range_mem3_20180211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180211_long_range_mem4 long_range_mem4_20180211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180212.tmp ]; then
  touch 20180212.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180212_analysis_assim analysis_assim_20180212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180212_short_range short_range_20180212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180212_medium_range medium_range_20180212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180212_long_range_mem1 long_range_mem1_20180212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180212_long_range_mem2 long_range_mem2_20180212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180212_long_range_mem3 long_range_mem3_20180212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180212_long_range_mem4 long_range_mem4_20180212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180213.tmp ]; then
  touch 20180213.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180213_analysis_assim analysis_assim_20180213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180213_short_range short_range_20180213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180213_medium_range medium_range_20180213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180213_long_range_mem1 long_range_mem1_20180213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180213_long_range_mem2 long_range_mem2_20180213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180213_long_range_mem3 long_range_mem3_20180213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180213_long_range_mem4 long_range_mem4_20180213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180214.tmp ]; then
  touch 20180214.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180214_analysis_assim analysis_assim_20180214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180214_short_range short_range_20180214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180214_medium_range medium_range_20180214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180214_long_range_mem1 long_range_mem1_20180214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180214_long_range_mem2 long_range_mem2_20180214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180214_long_range_mem3 long_range_mem3_20180214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180214_long_range_mem4 long_range_mem4_20180214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180215.tmp ]; then
  touch 20180215.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180215_analysis_assim analysis_assim_20180215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180215_short_range short_range_20180215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180215_medium_range medium_range_20180215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180215_long_range_mem1 long_range_mem1_20180215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180215_long_range_mem2 long_range_mem2_20180215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180215_long_range_mem3 long_range_mem3_20180215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180215_long_range_mem4 long_range_mem4_20180215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180216.tmp ]; then
  touch 20180216.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180216_analysis_assim analysis_assim_20180216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180216_short_range short_range_20180216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180216_medium_range medium_range_20180216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180216_long_range_mem1 long_range_mem1_20180216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180216_long_range_mem2 long_range_mem2_20180216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180216_long_range_mem3 long_range_mem3_20180216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180216_long_range_mem4 long_range_mem4_20180216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180217.tmp ]; then
  touch 20180217.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180217_analysis_assim analysis_assim_20180217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180217_short_range short_range_20180217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180217_medium_range medium_range_20180217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180217_long_range_mem1 long_range_mem1_20180217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180217_long_range_mem2 long_range_mem2_20180217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180217_long_range_mem3 long_range_mem3_20180217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180217_long_range_mem4 long_range_mem4_20180217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180218.tmp ]; then
  touch 20180218.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180218_analysis_assim analysis_assim_20180218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180218_short_range short_range_20180218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180218_medium_range medium_range_20180218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180218_long_range_mem1 long_range_mem1_20180218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180218_long_range_mem2 long_range_mem2_20180218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180218_long_range_mem3 long_range_mem3_20180218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180218_long_range_mem4 long_range_mem4_20180218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180219.tmp ]; then
  touch 20180219.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180219_analysis_assim analysis_assim_20180219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180219_short_range short_range_20180219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180219_medium_range medium_range_20180219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180219_long_range_mem1 long_range_mem1_20180219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180219_long_range_mem2 long_range_mem2_20180219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180219_long_range_mem3 long_range_mem3_20180219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180219_long_range_mem4 long_range_mem4_20180219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180220.tmp ]; then
  touch 20180220.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180220_analysis_assim analysis_assim_20180220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180220_short_range short_range_20180220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180220_medium_range medium_range_20180220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180220_long_range_mem1 long_range_mem1_20180220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180220_long_range_mem2 long_range_mem2_20180220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180220_long_range_mem3 long_range_mem3_20180220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180220_long_range_mem4 long_range_mem4_20180220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180221.tmp ]; then
  touch 20180221.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180221_analysis_assim analysis_assim_20180221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180221_short_range short_range_20180221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180221_medium_range medium_range_20180221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180221_long_range_mem1 long_range_mem1_20180221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180221_long_range_mem2 long_range_mem2_20180221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180221_long_range_mem3 long_range_mem3_20180221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180221_long_range_mem4 long_range_mem4_20180221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180222.tmp ]; then
  touch 20180222.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180222_analysis_assim analysis_assim_20180222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180222_short_range short_range_20180222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180222_medium_range medium_range_20180222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180222_long_range_mem1 long_range_mem1_20180222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180222_long_range_mem2 long_range_mem2_20180222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180222_long_range_mem3 long_range_mem3_20180222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180222_long_range_mem4 long_range_mem4_20180222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180223.tmp ]; then
  touch 20180223.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180223_analysis_assim analysis_assim_20180223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180223_short_range short_range_20180223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180223_medium_range medium_range_20180223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180223_long_range_mem1 long_range_mem1_20180223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180223_long_range_mem2 long_range_mem2_20180223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180223_long_range_mem3 long_range_mem3_20180223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180223_long_range_mem4 long_range_mem4_20180223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180224.tmp ]; then
  touch 20180224.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180224_analysis_assim analysis_assim_20180224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180224_short_range short_range_20180224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180224_medium_range medium_range_20180224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180224_long_range_mem1 long_range_mem1_20180224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180224_long_range_mem2 long_range_mem2_20180224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180224_long_range_mem3 long_range_mem3_20180224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180224_long_range_mem4 long_range_mem4_20180224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180225.tmp ]; then
  touch 20180225.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180225_analysis_assim analysis_assim_20180225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180225_short_range short_range_20180225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180225_medium_range medium_range_20180225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180225_long_range_mem1 long_range_mem1_20180225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180225_long_range_mem2 long_range_mem2_20180225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180225_long_range_mem3 long_range_mem3_20180225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180225_long_range_mem4 long_range_mem4_20180225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180226.tmp ]; then
  touch 20180226.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180226_analysis_assim analysis_assim_20180226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180226_short_range short_range_20180226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180226_medium_range medium_range_20180226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180226_long_range_mem1 long_range_mem1_20180226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180226_long_range_mem2 long_range_mem2_20180226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180226_long_range_mem3 long_range_mem3_20180226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180226_long_range_mem4 long_range_mem4_20180226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180227.tmp ]; then
  touch 20180227.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180227_analysis_assim analysis_assim_20180227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180227_short_range short_range_20180227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180227_medium_range medium_range_20180227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180227_long_range_mem1 long_range_mem1_20180227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180227_long_range_mem2 long_range_mem2_20180227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180227_long_range_mem3 long_range_mem3_20180227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180227_long_range_mem4 long_range_mem4_20180227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180228.tmp ]; then
  touch 20180228.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180228_analysis_assim analysis_assim_20180228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180228_short_range short_range_20180228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180228_medium_range medium_range_20180228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180228_long_range_mem1 long_range_mem1_20180228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180228_long_range_mem2 long_range_mem2_20180228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180228_long_range_mem3 long_range_mem3_20180228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180228_long_range_mem4 long_range_mem4_20180228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180301.tmp ]; then
  touch 20180301.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180301_analysis_assim analysis_assim_20180301.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180301_short_range short_range_20180301.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180301_medium_range medium_range_20180301.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180301_long_range_mem1 long_range_mem1_20180301.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180301_long_range_mem2 long_range_mem2_20180301.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180301_long_range_mem3 long_range_mem3_20180301.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180301_long_range_mem4 long_range_mem4_20180301.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180302.tmp ]; then
  touch 20180302.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180302_analysis_assim analysis_assim_20180302.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180302_short_range short_range_20180302.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180302_medium_range medium_range_20180302.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180302_long_range_mem1 long_range_mem1_20180302.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180302_long_range_mem2 long_range_mem2_20180302.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180302_long_range_mem3 long_range_mem3_20180302.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180302_long_range_mem4 long_range_mem4_20180302.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180303.tmp ]; then
  touch 20180303.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180303_analysis_assim analysis_assim_20180303.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180303_short_range short_range_20180303.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180303_medium_range medium_range_20180303.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180303_long_range_mem1 long_range_mem1_20180303.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180303_long_range_mem2 long_range_mem2_20180303.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180303_long_range_mem3 long_range_mem3_20180303.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180303_long_range_mem4 long_range_mem4_20180303.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180304.tmp ]; then
  touch 20180304.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180304_analysis_assim analysis_assim_20180304.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180304_short_range short_range_20180304.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180304_medium_range medium_range_20180304.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180304_long_range_mem1 long_range_mem1_20180304.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180304_long_range_mem2 long_range_mem2_20180304.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180304_long_range_mem3 long_range_mem3_20180304.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180304_long_range_mem4 long_range_mem4_20180304.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180305.tmp ]; then
  touch 20180305.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180305_analysis_assim analysis_assim_20180305.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180305_short_range short_range_20180305.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180305_medium_range medium_range_20180305.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180305_long_range_mem1 long_range_mem1_20180305.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180305_long_range_mem2 long_range_mem2_20180305.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180305_long_range_mem3 long_range_mem3_20180305.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180305_long_range_mem4 long_range_mem4_20180305.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180306.tmp ]; then
  touch 20180306.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180306_analysis_assim analysis_assim_20180306.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180306_short_range short_range_20180306.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180306_medium_range medium_range_20180306.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180306_long_range_mem1 long_range_mem1_20180306.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180306_long_range_mem2 long_range_mem2_20180306.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180306_long_range_mem3 long_range_mem3_20180306.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180306_long_range_mem4 long_range_mem4_20180306.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180307.tmp ]; then
  touch 20180307.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180307_analysis_assim analysis_assim_20180307.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180307_short_range short_range_20180307.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180307_medium_range medium_range_20180307.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180307_long_range_mem1 long_range_mem1_20180307.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180307_long_range_mem2 long_range_mem2_20180307.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180307_long_range_mem3 long_range_mem3_20180307.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180307_long_range_mem4 long_range_mem4_20180307.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180308.tmp ]; then
  touch 20180308.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180308_analysis_assim analysis_assim_20180308.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180308_short_range short_range_20180308.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180308_medium_range medium_range_20180308.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180308_long_range_mem1 long_range_mem1_20180308.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180308_long_range_mem2 long_range_mem2_20180308.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180308_long_range_mem3 long_range_mem3_20180308.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180308_long_range_mem4 long_range_mem4_20180308.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180309.tmp ]; then
  touch 20180309.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180309_analysis_assim analysis_assim_20180309.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180309_short_range short_range_20180309.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180309_medium_range medium_range_20180309.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180309_long_range_mem1 long_range_mem1_20180309.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180309_long_range_mem2 long_range_mem2_20180309.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180309_long_range_mem3 long_range_mem3_20180309.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180309_long_range_mem4 long_range_mem4_20180309.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180310.tmp ]; then
  touch 20180310.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180310_analysis_assim analysis_assim_20180310.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180310_short_range short_range_20180310.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180310_medium_range medium_range_20180310.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180310_long_range_mem1 long_range_mem1_20180310.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180310_long_range_mem2 long_range_mem2_20180310.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180310_long_range_mem3 long_range_mem3_20180310.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180310_long_range_mem4 long_range_mem4_20180310.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180311.tmp ]; then
  touch 20180311.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180311_analysis_assim analysis_assim_20180311.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180311_short_range short_range_20180311.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180311_medium_range medium_range_20180311.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180311_long_range_mem1 long_range_mem1_20180311.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180311_long_range_mem2 long_range_mem2_20180311.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180311_long_range_mem3 long_range_mem3_20180311.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180311_long_range_mem4 long_range_mem4_20180311.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180312.tmp ]; then
  touch 20180312.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180312_analysis_assim analysis_assim_20180312.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180312_short_range short_range_20180312.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180312_medium_range medium_range_20180312.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180312_long_range_mem1 long_range_mem1_20180312.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180312_long_range_mem2 long_range_mem2_20180312.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180312_long_range_mem3 long_range_mem3_20180312.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180312_long_range_mem4 long_range_mem4_20180312.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180313.tmp ]; then
  touch 20180313.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180313_analysis_assim analysis_assim_20180313.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180313_short_range short_range_20180313.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180313_medium_range medium_range_20180313.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180313_long_range_mem1 long_range_mem1_20180313.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180313_long_range_mem2 long_range_mem2_20180313.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180313_long_range_mem3 long_range_mem3_20180313.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180313_long_range_mem4 long_range_mem4_20180313.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180314.tmp ]; then
  touch 20180314.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180314_analysis_assim analysis_assim_20180314.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180314_short_range short_range_20180314.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180314_medium_range medium_range_20180314.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180314_long_range_mem1 long_range_mem1_20180314.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180314_long_range_mem2 long_range_mem2_20180314.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180314_long_range_mem3 long_range_mem3_20180314.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180314_long_range_mem4 long_range_mem4_20180314.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180315.tmp ]; then
  touch 20180315.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180315_analysis_assim analysis_assim_20180315.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180315_short_range short_range_20180315.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180315_medium_range medium_range_20180315.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180315_long_range_mem1 long_range_mem1_20180315.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180315_long_range_mem2 long_range_mem2_20180315.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180315_long_range_mem3 long_range_mem3_20180315.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180315_long_range_mem4 long_range_mem4_20180315.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180316.tmp ]; then
  touch 20180316.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180316_analysis_assim analysis_assim_20180316.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180316_short_range short_range_20180316.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180316_medium_range medium_range_20180316.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180316_long_range_mem1 long_range_mem1_20180316.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180316_long_range_mem2 long_range_mem2_20180316.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180316_long_range_mem3 long_range_mem3_20180316.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180316_long_range_mem4 long_range_mem4_20180316.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180317.tmp ]; then
  touch 20180317.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180317_analysis_assim analysis_assim_20180317.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180317_short_range short_range_20180317.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180317_medium_range medium_range_20180317.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180317_long_range_mem1 long_range_mem1_20180317.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180317_long_range_mem2 long_range_mem2_20180317.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180317_long_range_mem3 long_range_mem3_20180317.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180317_long_range_mem4 long_range_mem4_20180317.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180318.tmp ]; then
  touch 20180318.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180318_analysis_assim analysis_assim_20180318.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180318_short_range short_range_20180318.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180318_medium_range medium_range_20180318.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180318_long_range_mem1 long_range_mem1_20180318.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180318_long_range_mem2 long_range_mem2_20180318.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180318_long_range_mem3 long_range_mem3_20180318.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180318_long_range_mem4 long_range_mem4_20180318.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180319.tmp ]; then
  touch 20180319.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180319_analysis_assim analysis_assim_20180319.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180319_short_range short_range_20180319.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180319_medium_range medium_range_20180319.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180319_long_range_mem1 long_range_mem1_20180319.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180319_long_range_mem2 long_range_mem2_20180319.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180319_long_range_mem3 long_range_mem3_20180319.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180319_long_range_mem4 long_range_mem4_20180319.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180320.tmp ]; then
  touch 20180320.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180320_analysis_assim analysis_assim_20180320.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180320_short_range short_range_20180320.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180320_medium_range medium_range_20180320.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180320_long_range_mem1 long_range_mem1_20180320.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180320_long_range_mem2 long_range_mem2_20180320.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180320_long_range_mem3 long_range_mem3_20180320.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180320_long_range_mem4 long_range_mem4_20180320.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180321.tmp ]; then
  touch 20180321.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180321_analysis_assim analysis_assim_20180321.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180321_short_range short_range_20180321.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180321_medium_range medium_range_20180321.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180321_long_range_mem1 long_range_mem1_20180321.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180321_long_range_mem2 long_range_mem2_20180321.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180321_long_range_mem3 long_range_mem3_20180321.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180321_long_range_mem4 long_range_mem4_20180321.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180322.tmp ]; then
  touch 20180322.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180322_analysis_assim analysis_assim_20180322.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180322_short_range short_range_20180322.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180322_medium_range medium_range_20180322.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180322_long_range_mem1 long_range_mem1_20180322.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180322_long_range_mem2 long_range_mem2_20180322.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180322_long_range_mem3 long_range_mem3_20180322.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180322_long_range_mem4 long_range_mem4_20180322.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180323.tmp ]; then
  touch 20180323.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180323_analysis_assim analysis_assim_20180323.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180323_short_range short_range_20180323.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180323_medium_range medium_range_20180323.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180323_long_range_mem1 long_range_mem1_20180323.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180323_long_range_mem2 long_range_mem2_20180323.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180323_long_range_mem3 long_range_mem3_20180323.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180323_long_range_mem4 long_range_mem4_20180323.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180324.tmp ]; then
  touch 20180324.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180324_analysis_assim analysis_assim_20180324.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180324_short_range short_range_20180324.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180324_medium_range medium_range_20180324.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180324_long_range_mem1 long_range_mem1_20180324.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180324_long_range_mem2 long_range_mem2_20180324.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180324_long_range_mem3 long_range_mem3_20180324.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180324_long_range_mem4 long_range_mem4_20180324.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180325.tmp ]; then
  touch 20180325.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180325_analysis_assim analysis_assim_20180325.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180325_short_range short_range_20180325.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180325_medium_range medium_range_20180325.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180325_long_range_mem1 long_range_mem1_20180325.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180325_long_range_mem2 long_range_mem2_20180325.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180325_long_range_mem3 long_range_mem3_20180325.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180325_long_range_mem4 long_range_mem4_20180325.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180326.tmp ]; then
  touch 20180326.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180326_analysis_assim analysis_assim_20180326.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180326_short_range short_range_20180326.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180326_medium_range medium_range_20180326.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180326_long_range_mem1 long_range_mem1_20180326.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180326_long_range_mem2 long_range_mem2_20180326.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180326_long_range_mem3 long_range_mem3_20180326.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180326_long_range_mem4 long_range_mem4_20180326.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180327.tmp ]; then
  touch 20180327.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180327_analysis_assim analysis_assim_20180327.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180327_short_range short_range_20180327.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180327_medium_range medium_range_20180327.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180327_long_range_mem1 long_range_mem1_20180327.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180327_long_range_mem2 long_range_mem2_20180327.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180327_long_range_mem3 long_range_mem3_20180327.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180327_long_range_mem4 long_range_mem4_20180327.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180328.tmp ]; then
  touch 20180328.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180328_analysis_assim analysis_assim_20180328.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180328_short_range short_range_20180328.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180328_medium_range medium_range_20180328.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180328_long_range_mem1 long_range_mem1_20180328.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180328_long_range_mem2 long_range_mem2_20180328.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180328_long_range_mem3 long_range_mem3_20180328.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180328_long_range_mem4 long_range_mem4_20180328.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180329.tmp ]; then
  touch 20180329.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180329_analysis_assim analysis_assim_20180329.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180329_short_range short_range_20180329.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180329_medium_range medium_range_20180329.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180329_long_range_mem1 long_range_mem1_20180329.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180329_long_range_mem2 long_range_mem2_20180329.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180329_long_range_mem3 long_range_mem3_20180329.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180329_long_range_mem4 long_range_mem4_20180329.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180330.tmp ]; then
  touch 20180330.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180330_analysis_assim analysis_assim_20180330.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180330_short_range short_range_20180330.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180330_medium_range medium_range_20180330.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180330_long_range_mem1 long_range_mem1_20180330.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180330_long_range_mem2 long_range_mem2_20180330.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180330_long_range_mem3 long_range_mem3_20180330.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180330_long_range_mem4 long_range_mem4_20180330.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180331.tmp ]; then
  touch 20180331.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180331_analysis_assim analysis_assim_20180331.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180331_short_range short_range_20180331.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180331_medium_range medium_range_20180331.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180331_long_range_mem1 long_range_mem1_20180331.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180331_long_range_mem2 long_range_mem2_20180331.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180331_long_range_mem3 long_range_mem3_20180331.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180331_long_range_mem4 long_range_mem4_20180331.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180401.tmp ]; then
  touch 20180401.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180401_analysis_assim analysis_assim_20180401.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180401_short_range short_range_20180401.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180401_medium_range medium_range_20180401.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180401_long_range_mem1 long_range_mem1_20180401.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180401_long_range_mem2 long_range_mem2_20180401.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180401_long_range_mem3 long_range_mem3_20180401.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180401_long_range_mem4 long_range_mem4_20180401.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180402.tmp ]; then
  touch 20180402.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180402_analysis_assim analysis_assim_20180402.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180402_short_range short_range_20180402.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180402_medium_range medium_range_20180402.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180402_long_range_mem1 long_range_mem1_20180402.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180402_long_range_mem2 long_range_mem2_20180402.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180402_long_range_mem3 long_range_mem3_20180402.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180402_long_range_mem4 long_range_mem4_20180402.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180403.tmp ]; then
  touch 20180403.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180403_analysis_assim analysis_assim_20180403.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180403_short_range short_range_20180403.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180403_medium_range medium_range_20180403.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180403_long_range_mem1 long_range_mem1_20180403.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180403_long_range_mem2 long_range_mem2_20180403.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180403_long_range_mem3 long_range_mem3_20180403.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180403_long_range_mem4 long_range_mem4_20180403.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180404.tmp ]; then
  touch 20180404.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180404_analysis_assim analysis_assim_20180404.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180404_short_range short_range_20180404.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180404_medium_range medium_range_20180404.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180404_long_range_mem1 long_range_mem1_20180404.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180404_long_range_mem2 long_range_mem2_20180404.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180404_long_range_mem3 long_range_mem3_20180404.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180404_long_range_mem4 long_range_mem4_20180404.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180405.tmp ]; then
  touch 20180405.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180405_analysis_assim analysis_assim_20180405.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180405_short_range short_range_20180405.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180405_medium_range medium_range_20180405.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180405_long_range_mem1 long_range_mem1_20180405.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180405_long_range_mem2 long_range_mem2_20180405.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180405_long_range_mem3 long_range_mem3_20180405.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180405_long_range_mem4 long_range_mem4_20180405.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180406.tmp ]; then
  touch 20180406.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180406_analysis_assim analysis_assim_20180406.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180406_short_range short_range_20180406.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180406_medium_range medium_range_20180406.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180406_long_range_mem1 long_range_mem1_20180406.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180406_long_range_mem2 long_range_mem2_20180406.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180406_long_range_mem3 long_range_mem3_20180406.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180406_long_range_mem4 long_range_mem4_20180406.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180407.tmp ]; then
  touch 20180407.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180407_analysis_assim analysis_assim_20180407.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180407_short_range short_range_20180407.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180407_medium_range medium_range_20180407.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180407_long_range_mem1 long_range_mem1_20180407.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180407_long_range_mem2 long_range_mem2_20180407.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180407_long_range_mem3 long_range_mem3_20180407.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180407_long_range_mem4 long_range_mem4_20180407.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180408.tmp ]; then
  touch 20180408.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180408_analysis_assim analysis_assim_20180408.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180408_short_range short_range_20180408.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180408_medium_range medium_range_20180408.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180408_long_range_mem1 long_range_mem1_20180408.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180408_long_range_mem2 long_range_mem2_20180408.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180408_long_range_mem3 long_range_mem3_20180408.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180408_long_range_mem4 long_range_mem4_20180408.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180409.tmp ]; then
  touch 20180409.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180409_analysis_assim analysis_assim_20180409.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180409_short_range short_range_20180409.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180409_medium_range medium_range_20180409.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180409_long_range_mem1 long_range_mem1_20180409.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180409_long_range_mem2 long_range_mem2_20180409.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180409_long_range_mem3 long_range_mem3_20180409.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180409_long_range_mem4 long_range_mem4_20180409.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180410.tmp ]; then
  touch 20180410.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180410_analysis_assim analysis_assim_20180410.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180410_short_range short_range_20180410.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180410_medium_range medium_range_20180410.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180410_long_range_mem1 long_range_mem1_20180410.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180410_long_range_mem2 long_range_mem2_20180410.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180410_long_range_mem3 long_range_mem3_20180410.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180410_long_range_mem4 long_range_mem4_20180410.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180411.tmp ]; then
  touch 20180411.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180411_analysis_assim analysis_assim_20180411.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180411_short_range short_range_20180411.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180411_medium_range medium_range_20180411.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180411_long_range_mem1 long_range_mem1_20180411.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180411_long_range_mem2 long_range_mem2_20180411.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180411_long_range_mem3 long_range_mem3_20180411.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180411_long_range_mem4 long_range_mem4_20180411.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180412.tmp ]; then
  touch 20180412.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180412_analysis_assim analysis_assim_20180412.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180412_short_range short_range_20180412.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180412_medium_range medium_range_20180412.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180412_long_range_mem1 long_range_mem1_20180412.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180412_long_range_mem2 long_range_mem2_20180412.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180412_long_range_mem3 long_range_mem3_20180412.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180412_long_range_mem4 long_range_mem4_20180412.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180413.tmp ]; then
  touch 20180413.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180413_analysis_assim analysis_assim_20180413.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180413_short_range short_range_20180413.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180413_medium_range medium_range_20180413.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180413_long_range_mem1 long_range_mem1_20180413.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180413_long_range_mem2 long_range_mem2_20180413.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180413_long_range_mem3 long_range_mem3_20180413.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180413_long_range_mem4 long_range_mem4_20180413.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180414.tmp ]; then
  touch 20180414.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180414_analysis_assim analysis_assim_20180414.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180414_short_range short_range_20180414.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180414_medium_range medium_range_20180414.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180414_long_range_mem1 long_range_mem1_20180414.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180414_long_range_mem2 long_range_mem2_20180414.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180414_long_range_mem3 long_range_mem3_20180414.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180414_long_range_mem4 long_range_mem4_20180414.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180415.tmp ]; then
  touch 20180415.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180415_analysis_assim analysis_assim_20180415.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180415_short_range short_range_20180415.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180415_medium_range medium_range_20180415.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180415_long_range_mem1 long_range_mem1_20180415.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180415_long_range_mem2 long_range_mem2_20180415.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180415_long_range_mem3 long_range_mem3_20180415.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180415_long_range_mem4 long_range_mem4_20180415.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180416.tmp ]; then
  touch 20180416.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180416_analysis_assim analysis_assim_20180416.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180416_short_range short_range_20180416.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180416_medium_range medium_range_20180416.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180416_long_range_mem1 long_range_mem1_20180416.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180416_long_range_mem2 long_range_mem2_20180416.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180416_long_range_mem3 long_range_mem3_20180416.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180416_long_range_mem4 long_range_mem4_20180416.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180417.tmp ]; then
  touch 20180417.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180417_analysis_assim analysis_assim_20180417.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180417_short_range short_range_20180417.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180417_medium_range medium_range_20180417.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180417_long_range_mem1 long_range_mem1_20180417.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180417_long_range_mem2 long_range_mem2_20180417.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180417_long_range_mem3 long_range_mem3_20180417.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180417_long_range_mem4 long_range_mem4_20180417.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180418.tmp ]; then
  touch 20180418.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180418_analysis_assim analysis_assim_20180418.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180418_short_range short_range_20180418.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180418_medium_range medium_range_20180418.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180418_long_range_mem1 long_range_mem1_20180418.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180418_long_range_mem2 long_range_mem2_20180418.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180418_long_range_mem3 long_range_mem3_20180418.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180418_long_range_mem4 long_range_mem4_20180418.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180419.tmp ]; then
  touch 20180419.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180419_analysis_assim analysis_assim_20180419.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180419_short_range short_range_20180419.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180419_medium_range medium_range_20180419.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180419_long_range_mem1 long_range_mem1_20180419.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180419_long_range_mem2 long_range_mem2_20180419.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180419_long_range_mem3 long_range_mem3_20180419.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180419_long_range_mem4 long_range_mem4_20180419.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180420.tmp ]; then
  touch 20180420.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180420_analysis_assim analysis_assim_20180420.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180420_short_range short_range_20180420.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180420_medium_range medium_range_20180420.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180420_long_range_mem1 long_range_mem1_20180420.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180420_long_range_mem2 long_range_mem2_20180420.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180420_long_range_mem3 long_range_mem3_20180420.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180420_long_range_mem4 long_range_mem4_20180420.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180421.tmp ]; then
  touch 20180421.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180421_analysis_assim analysis_assim_20180421.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180421_short_range short_range_20180421.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180421_medium_range medium_range_20180421.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180421_long_range_mem1 long_range_mem1_20180421.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180421_long_range_mem2 long_range_mem2_20180421.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180421_long_range_mem3 long_range_mem3_20180421.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180421_long_range_mem4 long_range_mem4_20180421.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180422.tmp ]; then
  touch 20180422.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180422_analysis_assim analysis_assim_20180422.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180422_short_range short_range_20180422.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180422_medium_range medium_range_20180422.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180422_long_range_mem1 long_range_mem1_20180422.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180422_long_range_mem2 long_range_mem2_20180422.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180422_long_range_mem3 long_range_mem3_20180422.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180422_long_range_mem4 long_range_mem4_20180422.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180423.tmp ]; then
  touch 20180423.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180423_analysis_assim analysis_assim_20180423.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180423_short_range short_range_20180423.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180423_medium_range medium_range_20180423.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180423_long_range_mem1 long_range_mem1_20180423.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180423_long_range_mem2 long_range_mem2_20180423.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180423_long_range_mem3 long_range_mem3_20180423.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180423_long_range_mem4 long_range_mem4_20180423.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180424.tmp ]; then
  touch 20180424.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180424_analysis_assim analysis_assim_20180424.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180424_short_range short_range_20180424.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180424_medium_range medium_range_20180424.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180424_long_range_mem1 long_range_mem1_20180424.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180424_long_range_mem2 long_range_mem2_20180424.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180424_long_range_mem3 long_range_mem3_20180424.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180424_long_range_mem4 long_range_mem4_20180424.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180425.tmp ]; then
  touch 20180425.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180425_analysis_assim analysis_assim_20180425.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180425_short_range short_range_20180425.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180425_medium_range medium_range_20180425.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180425_long_range_mem1 long_range_mem1_20180425.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180425_long_range_mem2 long_range_mem2_20180425.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180425_long_range_mem3 long_range_mem3_20180425.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180425_long_range_mem4 long_range_mem4_20180425.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180426.tmp ]; then
  touch 20180426.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180426_analysis_assim analysis_assim_20180426.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180426_short_range short_range_20180426.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180426_medium_range medium_range_20180426.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180426_long_range_mem1 long_range_mem1_20180426.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180426_long_range_mem2 long_range_mem2_20180426.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180426_long_range_mem3 long_range_mem3_20180426.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180426_long_range_mem4 long_range_mem4_20180426.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180427.tmp ]; then
  touch 20180427.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180427_analysis_assim analysis_assim_20180427.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180427_short_range short_range_20180427.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180427_medium_range medium_range_20180427.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180427_long_range_mem1 long_range_mem1_20180427.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180427_long_range_mem2 long_range_mem2_20180427.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180427_long_range_mem3 long_range_mem3_20180427.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180427_long_range_mem4 long_range_mem4_20180427.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180428.tmp ]; then
  touch 20180428.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180428_analysis_assim analysis_assim_20180428.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180428_short_range short_range_20180428.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180428_medium_range medium_range_20180428.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180428_long_range_mem1 long_range_mem1_20180428.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180428_long_range_mem2 long_range_mem2_20180428.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180428_long_range_mem3 long_range_mem3_20180428.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180428_long_range_mem4 long_range_mem4_20180428.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180429.tmp ]; then
  touch 20180429.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180429_analysis_assim analysis_assim_20180429.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180429_short_range short_range_20180429.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180429_medium_range medium_range_20180429.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180429_long_range_mem1 long_range_mem1_20180429.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180429_long_range_mem2 long_range_mem2_20180429.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180429_long_range_mem3 long_range_mem3_20180429.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180429_long_range_mem4 long_range_mem4_20180429.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180430.tmp ]; then
  touch 20180430.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180430_analysis_assim analysis_assim_20180430.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180430_short_range short_range_20180430.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180430_medium_range medium_range_20180430.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180430_long_range_mem1 long_range_mem1_20180430.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180430_long_range_mem2 long_range_mem2_20180430.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180430_long_range_mem3 long_range_mem3_20180430.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180430_long_range_mem4 long_range_mem4_20180430.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180501.tmp ]; then
  touch 20180501.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180501_analysis_assim analysis_assim_20180501.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180501_short_range short_range_20180501.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180501_medium_range medium_range_20180501.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180501_long_range_mem1 long_range_mem1_20180501.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180501_long_range_mem2 long_range_mem2_20180501.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180501_long_range_mem3 long_range_mem3_20180501.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180501_long_range_mem4 long_range_mem4_20180501.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180502.tmp ]; then
  touch 20180502.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180502_analysis_assim analysis_assim_20180502.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180502_short_range short_range_20180502.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180502_medium_range medium_range_20180502.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180502_long_range_mem1 long_range_mem1_20180502.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180502_long_range_mem2 long_range_mem2_20180502.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180502_long_range_mem3 long_range_mem3_20180502.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180502_long_range_mem4 long_range_mem4_20180502.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180503.tmp ]; then
  touch 20180503.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180503_analysis_assim analysis_assim_20180503.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180503_short_range short_range_20180503.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180503_medium_range medium_range_20180503.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180503_long_range_mem1 long_range_mem1_20180503.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180503_long_range_mem2 long_range_mem2_20180503.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180503_long_range_mem3 long_range_mem3_20180503.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180503_long_range_mem4 long_range_mem4_20180503.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180504.tmp ]; then
  touch 20180504.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180504_analysis_assim analysis_assim_20180504.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180504_short_range short_range_20180504.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180504_medium_range medium_range_20180504.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180504_long_range_mem1 long_range_mem1_20180504.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180504_long_range_mem2 long_range_mem2_20180504.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180504_long_range_mem3 long_range_mem3_20180504.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180504_long_range_mem4 long_range_mem4_20180504.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180505.tmp ]; then
  touch 20180505.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180505_analysis_assim analysis_assim_20180505.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180505_short_range short_range_20180505.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180505_medium_range medium_range_20180505.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180505_long_range_mem1 long_range_mem1_20180505.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180505_long_range_mem2 long_range_mem2_20180505.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180505_long_range_mem3 long_range_mem3_20180505.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180505_long_range_mem4 long_range_mem4_20180505.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180506.tmp ]; then
  touch 20180506.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180506_analysis_assim analysis_assim_20180506.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180506_short_range short_range_20180506.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180506_medium_range medium_range_20180506.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180506_long_range_mem1 long_range_mem1_20180506.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180506_long_range_mem2 long_range_mem2_20180506.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180506_long_range_mem3 long_range_mem3_20180506.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180506_long_range_mem4 long_range_mem4_20180506.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180507.tmp ]; then
  touch 20180507.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180507_analysis_assim analysis_assim_20180507.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180507_short_range short_range_20180507.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180507_medium_range medium_range_20180507.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180507_long_range_mem1 long_range_mem1_20180507.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180507_long_range_mem2 long_range_mem2_20180507.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180507_long_range_mem3 long_range_mem3_20180507.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180507_long_range_mem4 long_range_mem4_20180507.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180508.tmp ]; then
  touch 20180508.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180508_analysis_assim analysis_assim_20180508.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180508_short_range short_range_20180508.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180508_medium_range medium_range_20180508.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180508_long_range_mem1 long_range_mem1_20180508.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180508_long_range_mem2 long_range_mem2_20180508.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180508_long_range_mem3 long_range_mem3_20180508.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180508_long_range_mem4 long_range_mem4_20180508.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180509.tmp ]; then
  touch 20180509.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180509_analysis_assim analysis_assim_20180509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180509_short_range short_range_20180509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180509_medium_range medium_range_20180509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180509_long_range_mem1 long_range_mem1_20180509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180509_long_range_mem2 long_range_mem2_20180509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180509_long_range_mem3 long_range_mem3_20180509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180509_long_range_mem4 long_range_mem4_20180509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180510.tmp ]; then
  touch 20180510.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180510_analysis_assim analysis_assim_20180510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180510_short_range short_range_20180510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180510_medium_range medium_range_20180510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180510_long_range_mem1 long_range_mem1_20180510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180510_long_range_mem2 long_range_mem2_20180510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180510_long_range_mem3 long_range_mem3_20180510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180510_long_range_mem4 long_range_mem4_20180510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180511.tmp ]; then
  touch 20180511.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180511_analysis_assim analysis_assim_20180511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180511_short_range short_range_20180511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180511_medium_range medium_range_20180511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180511_long_range_mem1 long_range_mem1_20180511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180511_long_range_mem2 long_range_mem2_20180511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180511_long_range_mem3 long_range_mem3_20180511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180511_long_range_mem4 long_range_mem4_20180511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180512.tmp ]; then
  touch 20180512.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180512_analysis_assim analysis_assim_20180512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180512_short_range short_range_20180512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180512_medium_range medium_range_20180512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180512_long_range_mem1 long_range_mem1_20180512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180512_long_range_mem2 long_range_mem2_20180512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180512_long_range_mem3 long_range_mem3_20180512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180512_long_range_mem4 long_range_mem4_20180512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180513.tmp ]; then
  touch 20180513.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180513_analysis_assim analysis_assim_20180513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180513_short_range short_range_20180513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180513_medium_range medium_range_20180513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180513_long_range_mem1 long_range_mem1_20180513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180513_long_range_mem2 long_range_mem2_20180513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180513_long_range_mem3 long_range_mem3_20180513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180513_long_range_mem4 long_range_mem4_20180513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180514.tmp ]; then
  touch 20180514.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180514_analysis_assim analysis_assim_20180514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180514_short_range short_range_20180514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180514_medium_range medium_range_20180514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180514_long_range_mem1 long_range_mem1_20180514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180514_long_range_mem2 long_range_mem2_20180514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180514_long_range_mem3 long_range_mem3_20180514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180514_long_range_mem4 long_range_mem4_20180514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180515.tmp ]; then
  touch 20180515.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180515_analysis_assim analysis_assim_20180515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180515_short_range short_range_20180515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180515_medium_range medium_range_20180515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180515_long_range_mem1 long_range_mem1_20180515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180515_long_range_mem2 long_range_mem2_20180515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180515_long_range_mem3 long_range_mem3_20180515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180515_long_range_mem4 long_range_mem4_20180515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180516.tmp ]; then
  touch 20180516.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180516_analysis_assim analysis_assim_20180516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180516_short_range short_range_20180516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180516_medium_range medium_range_20180516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180516_long_range_mem1 long_range_mem1_20180516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180516_long_range_mem2 long_range_mem2_20180516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180516_long_range_mem3 long_range_mem3_20180516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180516_long_range_mem4 long_range_mem4_20180516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180517.tmp ]; then
  touch 20180517.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180517_analysis_assim analysis_assim_20180517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180517_short_range short_range_20180517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180517_medium_range medium_range_20180517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180517_long_range_mem1 long_range_mem1_20180517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180517_long_range_mem2 long_range_mem2_20180517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180517_long_range_mem3 long_range_mem3_20180517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180517_long_range_mem4 long_range_mem4_20180517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180518.tmp ]; then
  touch 20180518.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180518_analysis_assim analysis_assim_20180518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180518_short_range short_range_20180518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180518_medium_range medium_range_20180518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180518_long_range_mem1 long_range_mem1_20180518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180518_long_range_mem2 long_range_mem2_20180518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180518_long_range_mem3 long_range_mem3_20180518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180518_long_range_mem4 long_range_mem4_20180518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180519.tmp ]; then
  touch 20180519.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180519_analysis_assim analysis_assim_20180519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180519_short_range short_range_20180519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180519_medium_range medium_range_20180519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180519_long_range_mem1 long_range_mem1_20180519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180519_long_range_mem2 long_range_mem2_20180519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180519_long_range_mem3 long_range_mem3_20180519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180519_long_range_mem4 long_range_mem4_20180519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180520.tmp ]; then
  touch 20180520.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180520_analysis_assim analysis_assim_20180520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180520_short_range short_range_20180520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180520_medium_range medium_range_20180520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180520_long_range_mem1 long_range_mem1_20180520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180520_long_range_mem2 long_range_mem2_20180520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180520_long_range_mem3 long_range_mem3_20180520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180520_long_range_mem4 long_range_mem4_20180520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180521.tmp ]; then
  touch 20180521.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180521_analysis_assim analysis_assim_20180521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180521_short_range short_range_20180521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180521_medium_range medium_range_20180521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180521_long_range_mem1 long_range_mem1_20180521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180521_long_range_mem2 long_range_mem2_20180521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180521_long_range_mem3 long_range_mem3_20180521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180521_long_range_mem4 long_range_mem4_20180521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180522.tmp ]; then
  touch 20180522.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180522_analysis_assim analysis_assim_20180522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180522_short_range short_range_20180522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180522_medium_range medium_range_20180522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180522_long_range_mem1 long_range_mem1_20180522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180522_long_range_mem2 long_range_mem2_20180522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180522_long_range_mem3 long_range_mem3_20180522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180522_long_range_mem4 long_range_mem4_20180522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180523.tmp ]; then
  touch 20180523.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180523_analysis_assim analysis_assim_20180523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180523_short_range short_range_20180523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180523_medium_range medium_range_20180523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180523_long_range_mem1 long_range_mem1_20180523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180523_long_range_mem2 long_range_mem2_20180523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180523_long_range_mem3 long_range_mem3_20180523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180523_long_range_mem4 long_range_mem4_20180523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180524.tmp ]; then
  touch 20180524.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180524_analysis_assim analysis_assim_20180524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180524_short_range short_range_20180524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180524_medium_range medium_range_20180524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180524_long_range_mem1 long_range_mem1_20180524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180524_long_range_mem2 long_range_mem2_20180524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180524_long_range_mem3 long_range_mem3_20180524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180524_long_range_mem4 long_range_mem4_20180524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180525.tmp ]; then
  touch 20180525.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180525_analysis_assim analysis_assim_20180525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180525_short_range short_range_20180525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180525_medium_range medium_range_20180525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180525_long_range_mem1 long_range_mem1_20180525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180525_long_range_mem2 long_range_mem2_20180525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180525_long_range_mem3 long_range_mem3_20180525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180525_long_range_mem4 long_range_mem4_20180525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180526.tmp ]; then
  touch 20180526.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180526_analysis_assim analysis_assim_20180526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180526_short_range short_range_20180526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180526_medium_range medium_range_20180526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180526_long_range_mem1 long_range_mem1_20180526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180526_long_range_mem2 long_range_mem2_20180526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180526_long_range_mem3 long_range_mem3_20180526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180526_long_range_mem4 long_range_mem4_20180526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180527.tmp ]; then
  touch 20180527.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180527_analysis_assim analysis_assim_20180527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180527_short_range short_range_20180527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180527_medium_range medium_range_20180527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180527_long_range_mem1 long_range_mem1_20180527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180527_long_range_mem2 long_range_mem2_20180527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180527_long_range_mem3 long_range_mem3_20180527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180527_long_range_mem4 long_range_mem4_20180527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180528.tmp ]; then
  touch 20180528.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180528_analysis_assim analysis_assim_20180528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180528_short_range short_range_20180528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180528_medium_range medium_range_20180528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180528_long_range_mem1 long_range_mem1_20180528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180528_long_range_mem2 long_range_mem2_20180528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180528_long_range_mem3 long_range_mem3_20180528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180528_long_range_mem4 long_range_mem4_20180528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180529.tmp ]; then
  touch 20180529.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180529_analysis_assim analysis_assim_20180529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180529_short_range short_range_20180529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180529_medium_range medium_range_20180529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180529_long_range_mem1 long_range_mem1_20180529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180529_long_range_mem2 long_range_mem2_20180529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180529_long_range_mem3 long_range_mem3_20180529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180529_long_range_mem4 long_range_mem4_20180529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180530.tmp ]; then
  touch 20180530.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180530_analysis_assim analysis_assim_20180530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180530_short_range short_range_20180530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180530_medium_range medium_range_20180530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180530_long_range_mem1 long_range_mem1_20180530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180530_long_range_mem2 long_range_mem2_20180530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180530_long_range_mem3 long_range_mem3_20180530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180530_long_range_mem4 long_range_mem4_20180530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
if [ ! -f 20180531.tmp ]; then
  touch 20180531.tmp
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180531_analysis_assim analysis_assim_20180531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180531_short_range short_range_20180531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180531_medium_range medium_range_20180531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180531_long_range_mem1 long_range_mem1_20180531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180531_long_range_mem2 long_range_mem2_20180531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180531_long_range_mem3 long_range_mem3_20180531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh 20180531_long_range_mem4 long_range_mem4_20180531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/400k_comids.rds
fi
