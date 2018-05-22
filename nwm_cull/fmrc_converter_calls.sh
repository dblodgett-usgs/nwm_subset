#!/bin/bash
Rscript nwm_subset/nwm_cull/cull_catchments.R nwm_subset/NWM_v1.2_nc_tools_v1/spatialMetadataFiles/nwm-v1.2-channel_spatial_index.nc culled_latlon.nc nwm_subset/nexus_locations/nwis_comids.rds
if [ ! -f 20170509.tmp ]; then
  touch 20170509.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170509/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170509/short_range short_range_20170509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170509/medium_range medium_range_20170509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170509/
fi
if [ ! -f 20170510.tmp ]; then
  touch 20170510.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170510/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170510/short_range short_range_20170510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170510/medium_range medium_range_20170510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170510/
fi
if [ ! -f 20170511.tmp ]; then
  touch 20170511.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170511/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170511/short_range short_range_20170511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170511/medium_range medium_range_20170511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170511/
fi
if [ ! -f 20170512.tmp ]; then
  touch 20170512.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170512/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170512/short_range short_range_20170512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170512/medium_range medium_range_20170512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170512/
fi
if [ ! -f 20170513.tmp ]; then
  touch 20170513.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170513/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170513/short_range short_range_20170513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170513/medium_range medium_range_20170513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170513/
fi
if [ ! -f 20170514.tmp ]; then
  touch 20170514.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170514/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170514/short_range short_range_20170514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170514/medium_range medium_range_20170514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170514/
fi
if [ ! -f 20170515.tmp ]; then
  touch 20170515.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170515/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170515/short_range short_range_20170515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170515/medium_range medium_range_20170515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170515/
fi
if [ ! -f 20170516.tmp ]; then
  touch 20170516.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170516/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170516/short_range short_range_20170516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170516/medium_range medium_range_20170516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170516/
fi
if [ ! -f 20170517.tmp ]; then
  touch 20170517.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170517/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170517/short_range short_range_20170517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170517/medium_range medium_range_20170517.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170517/
fi
if [ ! -f 20170518.tmp ]; then
  touch 20170518.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170518/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170518/short_range short_range_20170518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170518/medium_range medium_range_20170518.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170518/
fi
if [ ! -f 20170519.tmp ]; then
  touch 20170519.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170519/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170519/short_range short_range_20170519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170519/medium_range medium_range_20170519.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170519/
fi
if [ ! -f 20170520.tmp ]; then
  touch 20170520.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170520/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170520/short_range short_range_20170520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170520/medium_range medium_range_20170520.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170520/
fi
if [ ! -f 20170521.tmp ]; then
  touch 20170521.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170521/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170521/short_range short_range_20170521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170521/medium_range medium_range_20170521.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170521/
fi
if [ ! -f 20170522.tmp ]; then
  touch 20170522.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170522/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170522/short_range short_range_20170522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170522/medium_range medium_range_20170522.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170522/
fi
if [ ! -f 20170523.tmp ]; then
  touch 20170523.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170523/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170523/short_range short_range_20170523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170523/medium_range medium_range_20170523.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170523/
fi
if [ ! -f 20170524.tmp ]; then
  touch 20170524.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170524/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170524/short_range short_range_20170524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170524/medium_range medium_range_20170524.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170524/
fi
if [ ! -f 20170525.tmp ]; then
  touch 20170525.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170525/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170525/short_range short_range_20170525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170525/medium_range medium_range_20170525.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170525/
fi
if [ ! -f 20170526.tmp ]; then
  touch 20170526.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170526/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170526/short_range short_range_20170526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170526/medium_range medium_range_20170526.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170526/
fi
if [ ! -f 20170527.tmp ]; then
  touch 20170527.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170527/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170527/short_range short_range_20170527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170527/medium_range medium_range_20170527.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170527/
fi
if [ ! -f 20170528.tmp ]; then
  touch 20170528.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170528/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170528/short_range short_range_20170528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170528/medium_range medium_range_20170528.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170528/
fi
if [ ! -f 20170529.tmp ]; then
  touch 20170529.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170529/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170529/short_range short_range_20170529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170529/medium_range medium_range_20170529.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170529/
fi
if [ ! -f 20170530.tmp ]; then
  touch 20170530.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170530/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170530/short_range short_range_20170530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170530/medium_range medium_range_20170530.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170530/
fi
if [ ! -f 20170531.tmp ]; then
  touch 20170531.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170531/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170531/short_range short_range_20170531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170531/medium_range medium_range_20170531.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170531/
fi
if [ ! -f 20170601.tmp ]; then
  touch 20170601.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170601/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170601/short_range short_range_20170601.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170601/medium_range medium_range_20170601.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170601/
fi
if [ ! -f 20170602.tmp ]; then
  touch 20170602.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170602/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170602/short_range short_range_20170602.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170602/medium_range medium_range_20170602.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170602/
fi
if [ ! -f 20170603.tmp ]; then
  touch 20170603.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170603/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170603/short_range short_range_20170603.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170603/medium_range medium_range_20170603.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170603/
fi
if [ ! -f 20170604.tmp ]; then
  touch 20170604.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170604/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170604/short_range short_range_20170604.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170604/medium_range medium_range_20170604.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170604/
fi
if [ ! -f 20170605.tmp ]; then
  touch 20170605.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170605/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170605/short_range short_range_20170605.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170605/medium_range medium_range_20170605.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170605/
fi
if [ ! -f 20170606.tmp ]; then
  touch 20170606.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170606/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170606/short_range short_range_20170606.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170606/medium_range medium_range_20170606.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170606/
fi
if [ ! -f 20170607.tmp ]; then
  touch 20170607.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170607/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170607/short_range short_range_20170607.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170607/medium_range medium_range_20170607.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170607/
fi
if [ ! -f 20170608.tmp ]; then
  touch 20170608.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170608/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170608/short_range short_range_20170608.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170608/medium_range medium_range_20170608.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170608/
fi
if [ ! -f 20170609.tmp ]; then
  touch 20170609.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170609/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170609/short_range short_range_20170609.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170609/medium_range medium_range_20170609.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170609/
fi
if [ ! -f 20170610.tmp ]; then
  touch 20170610.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170610/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170610/short_range short_range_20170610.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170610/medium_range medium_range_20170610.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170610/
fi
if [ ! -f 20170611.tmp ]; then
  touch 20170611.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170611/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170611/short_range short_range_20170611.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170611/medium_range medium_range_20170611.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170611/
fi
if [ ! -f 20170612.tmp ]; then
  touch 20170612.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170612/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170612/short_range short_range_20170612.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170612/medium_range medium_range_20170612.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170612/
fi
if [ ! -f 20170613.tmp ]; then
  touch 20170613.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170613/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170613/short_range short_range_20170613.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170613/medium_range medium_range_20170613.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170613/
fi
if [ ! -f 20170614.tmp ]; then
  touch 20170614.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170614/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170614/short_range short_range_20170614.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170614/medium_range medium_range_20170614.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170614/
fi
if [ ! -f 20170615.tmp ]; then
  touch 20170615.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170615/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170615/short_range short_range_20170615.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170615/medium_range medium_range_20170615.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170615/
fi
if [ ! -f 20170616.tmp ]; then
  touch 20170616.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170616/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170616/short_range short_range_20170616.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170616/medium_range medium_range_20170616.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170616/
fi
if [ ! -f 20170617.tmp ]; then
  touch 20170617.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170617/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170617/short_range short_range_20170617.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170617/medium_range medium_range_20170617.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170617/
fi
if [ ! -f 20170618.tmp ]; then
  touch 20170618.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170618/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170618/short_range short_range_20170618.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170618/medium_range medium_range_20170618.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170618/
fi
if [ ! -f 20170619.tmp ]; then
  touch 20170619.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170619/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170619/short_range short_range_20170619.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170619/medium_range medium_range_20170619.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170619/
fi
if [ ! -f 20170620.tmp ]; then
  touch 20170620.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170620/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170620/short_range short_range_20170620.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170620/medium_range medium_range_20170620.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170620/
fi
if [ ! -f 20170621.tmp ]; then
  touch 20170621.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170621/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170621/short_range short_range_20170621.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170621/medium_range medium_range_20170621.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170621/
fi
if [ ! -f 20170622.tmp ]; then
  touch 20170622.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170622/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170622/short_range short_range_20170622.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170622/medium_range medium_range_20170622.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170622/
fi
if [ ! -f 20170623.tmp ]; then
  touch 20170623.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170623/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170623/short_range short_range_20170623.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170623/medium_range medium_range_20170623.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170623/
fi
if [ ! -f 20170624.tmp ]; then
  touch 20170624.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170624/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170624/short_range short_range_20170624.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170624/medium_range medium_range_20170624.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170624/
fi
if [ ! -f 20170625.tmp ]; then
  touch 20170625.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170625/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170625/short_range short_range_20170625.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170625/medium_range medium_range_20170625.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170625/
fi
if [ ! -f 20170626.tmp ]; then
  touch 20170626.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170626/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170626/short_range short_range_20170626.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170626/medium_range medium_range_20170626.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170626/
fi
if [ ! -f 20170627.tmp ]; then
  touch 20170627.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170627/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170627/short_range short_range_20170627.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170627/medium_range medium_range_20170627.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170627/
fi
if [ ! -f 20170628.tmp ]; then
  touch 20170628.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170628/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170628/short_range short_range_20170628.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170628/medium_range medium_range_20170628.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170628/
fi
if [ ! -f 20170629.tmp ]; then
  touch 20170629.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170629/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170629/short_range short_range_20170629.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170629/medium_range medium_range_20170629.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170629/
fi
if [ ! -f 20170630.tmp ]; then
  touch 20170630.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170630/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170630/short_range short_range_20170630.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170630/medium_range medium_range_20170630.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170630/
fi
if [ ! -f 20170701.tmp ]; then
  touch 20170701.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170701/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170701/short_range short_range_20170701.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170701/medium_range medium_range_20170701.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170701/
fi
if [ ! -f 20170702.tmp ]; then
  touch 20170702.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170702/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170702/short_range short_range_20170702.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170702/medium_range medium_range_20170702.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170702/
fi
if [ ! -f 20170703.tmp ]; then
  touch 20170703.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170703/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170703/short_range short_range_20170703.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170703/medium_range medium_range_20170703.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170703/
fi
if [ ! -f 20170704.tmp ]; then
  touch 20170704.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170704/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170704/short_range short_range_20170704.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170704/medium_range medium_range_20170704.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170704/
fi
if [ ! -f 20170705.tmp ]; then
  touch 20170705.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170705/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170705/short_range short_range_20170705.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170705/medium_range medium_range_20170705.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170705/
fi
if [ ! -f 20170706.tmp ]; then
  touch 20170706.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170706/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170706/short_range short_range_20170706.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170706/medium_range medium_range_20170706.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170706/
fi
if [ ! -f 20170707.tmp ]; then
  touch 20170707.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170707/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170707/short_range short_range_20170707.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170707/medium_range medium_range_20170707.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170707/
fi
if [ ! -f 20170708.tmp ]; then
  touch 20170708.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170708/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170708/short_range short_range_20170708.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170708/medium_range medium_range_20170708.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170708/
fi
if [ ! -f 20170709.tmp ]; then
  touch 20170709.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170709/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170709/short_range short_range_20170709.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170709/medium_range medium_range_20170709.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170709/
fi
if [ ! -f 20170710.tmp ]; then
  touch 20170710.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170710/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170710/short_range short_range_20170710.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170710/medium_range medium_range_20170710.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170710/
fi
if [ ! -f 20170711.tmp ]; then
  touch 20170711.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170711/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170711/short_range short_range_20170711.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170711/medium_range medium_range_20170711.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170711/
fi
if [ ! -f 20170712.tmp ]; then
  touch 20170712.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170712/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170712/short_range short_range_20170712.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170712/medium_range medium_range_20170712.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170712/
fi
if [ ! -f 20170713.tmp ]; then
  touch 20170713.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170713/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170713/short_range short_range_20170713.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170713/medium_range medium_range_20170713.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170713/
fi
if [ ! -f 20170714.tmp ]; then
  touch 20170714.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170714/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170714/short_range short_range_20170714.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170714/medium_range medium_range_20170714.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170714/
fi
if [ ! -f 20170715.tmp ]; then
  touch 20170715.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170715/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170715/short_range short_range_20170715.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170715/medium_range medium_range_20170715.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170715/
fi
if [ ! -f 20170716.tmp ]; then
  touch 20170716.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170716/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170716/short_range short_range_20170716.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170716/medium_range medium_range_20170716.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170716/
fi
if [ ! -f 20170717.tmp ]; then
  touch 20170717.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170717/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170717/short_range short_range_20170717.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170717/medium_range medium_range_20170717.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170717/
fi
if [ ! -f 20170718.tmp ]; then
  touch 20170718.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170718/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170718/short_range short_range_20170718.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170718/medium_range medium_range_20170718.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170718/
fi
if [ ! -f 20170719.tmp ]; then
  touch 20170719.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170719/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170719/short_range short_range_20170719.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170719/medium_range medium_range_20170719.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170719/
fi
if [ ! -f 20170720.tmp ]; then
  touch 20170720.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170720/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170720/short_range short_range_20170720.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170720/medium_range medium_range_20170720.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170720/
fi
if [ ! -f 20170721.tmp ]; then
  touch 20170721.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170721/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170721/short_range short_range_20170721.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170721/medium_range medium_range_20170721.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170721/
fi
if [ ! -f 20170722.tmp ]; then
  touch 20170722.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170722/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170722/short_range short_range_20170722.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170722/medium_range medium_range_20170722.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170722/
fi
if [ ! -f 20170723.tmp ]; then
  touch 20170723.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170723/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170723/short_range short_range_20170723.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170723/medium_range medium_range_20170723.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170723/
fi
if [ ! -f 20170724.tmp ]; then
  touch 20170724.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170724/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170724/short_range short_range_20170724.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170724/medium_range medium_range_20170724.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170724/
fi
if [ ! -f 20170725.tmp ]; then
  touch 20170725.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170725/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170725/short_range short_range_20170725.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170725/medium_range medium_range_20170725.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170725/
fi
if [ ! -f 20170726.tmp ]; then
  touch 20170726.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170726/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170726/short_range short_range_20170726.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170726/medium_range medium_range_20170726.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170726/
fi
if [ ! -f 20170727.tmp ]; then
  touch 20170727.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170727/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170727/short_range short_range_20170727.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170727/medium_range medium_range_20170727.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170727/
fi
if [ ! -f 20170728.tmp ]; then
  touch 20170728.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170728/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170728/short_range short_range_20170728.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170728/medium_range medium_range_20170728.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170728/
fi
if [ ! -f 20170729.tmp ]; then
  touch 20170729.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170729/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170729/short_range short_range_20170729.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170729/medium_range medium_range_20170729.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170729/
fi
if [ ! -f 20170730.tmp ]; then
  touch 20170730.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170730/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170730/short_range short_range_20170730.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170730/medium_range medium_range_20170730.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170730/
fi
if [ ! -f 20170731.tmp ]; then
  touch 20170731.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170731/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170731/short_range short_range_20170731.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170731/medium_range medium_range_20170731.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170731/
fi
if [ ! -f 20170801.tmp ]; then
  touch 20170801.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170801/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170801/short_range short_range_20170801.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170801/medium_range medium_range_20170801.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170801/
fi
if [ ! -f 20170802.tmp ]; then
  touch 20170802.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170802/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170802/short_range short_range_20170802.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170802/medium_range medium_range_20170802.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170802/
fi
if [ ! -f 20170803.tmp ]; then
  touch 20170803.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170803/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170803/short_range short_range_20170803.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170803/medium_range medium_range_20170803.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170803/
fi
if [ ! -f 20170804.tmp ]; then
  touch 20170804.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170804/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170804/short_range short_range_20170804.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170804/medium_range medium_range_20170804.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170804/
fi
if [ ! -f 20170805.tmp ]; then
  touch 20170805.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170805/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170805/short_range short_range_20170805.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170805/medium_range medium_range_20170805.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170805/
fi
if [ ! -f 20170806.tmp ]; then
  touch 20170806.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170806/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170806/short_range short_range_20170806.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170806/medium_range medium_range_20170806.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170806/
fi
if [ ! -f 20170807.tmp ]; then
  touch 20170807.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170807/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170807/short_range short_range_20170807.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170807/medium_range medium_range_20170807.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170807/
fi
if [ ! -f 20170808.tmp ]; then
  touch 20170808.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170808/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170808/short_range short_range_20170808.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170808/medium_range medium_range_20170808.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170808/
fi
if [ ! -f 20170809.tmp ]; then
  touch 20170809.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170809/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170809/short_range short_range_20170809.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170809/medium_range medium_range_20170809.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170809/
fi
if [ ! -f 20170810.tmp ]; then
  touch 20170810.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170810/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170810/short_range short_range_20170810.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170810/medium_range medium_range_20170810.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170810/
fi
if [ ! -f 20170811.tmp ]; then
  touch 20170811.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170811/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170811/short_range short_range_20170811.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170811/medium_range medium_range_20170811.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170811/
fi
if [ ! -f 20170812.tmp ]; then
  touch 20170812.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170812/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170812/short_range short_range_20170812.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170812/medium_range medium_range_20170812.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170812/
fi
if [ ! -f 20170813.tmp ]; then
  touch 20170813.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170813/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170813/short_range short_range_20170813.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170813/medium_range medium_range_20170813.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170813/
fi
if [ ! -f 20170814.tmp ]; then
  touch 20170814.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170814/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170814/short_range short_range_20170814.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170814/medium_range medium_range_20170814.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170814/
fi
if [ ! -f 20170815.tmp ]; then
  touch 20170815.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170815/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170815/short_range short_range_20170815.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170815/medium_range medium_range_20170815.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170815/
fi
if [ ! -f 20170816.tmp ]; then
  touch 20170816.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170816/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170816/short_range short_range_20170816.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170816/medium_range medium_range_20170816.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170816/
fi
if [ ! -f 20170817.tmp ]; then
  touch 20170817.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170817/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170817/short_range short_range_20170817.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170817/medium_range medium_range_20170817.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170817/
fi
if [ ! -f 20170818.tmp ]; then
  touch 20170818.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170818/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170818/short_range short_range_20170818.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170818/medium_range medium_range_20170818.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170818/
fi
if [ ! -f 20170819.tmp ]; then
  touch 20170819.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170819/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170819/short_range short_range_20170819.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170819/medium_range medium_range_20170819.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170819/
fi
if [ ! -f 20170820.tmp ]; then
  touch 20170820.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170820/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170820/short_range short_range_20170820.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170820/medium_range medium_range_20170820.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170820/
fi
if [ ! -f 20170821.tmp ]; then
  touch 20170821.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170821/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170821/short_range short_range_20170821.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170821/medium_range medium_range_20170821.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170821/
fi
if [ ! -f 20170822.tmp ]; then
  touch 20170822.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170822/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170822/short_range short_range_20170822.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170822/medium_range medium_range_20170822.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170822/
fi
if [ ! -f 20170823.tmp ]; then
  touch 20170823.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170823/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170823/short_range short_range_20170823.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170823/medium_range medium_range_20170823.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170823/
fi
if [ ! -f 20170824.tmp ]; then
  touch 20170824.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170824/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170824/short_range short_range_20170824.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170824/medium_range medium_range_20170824.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170824/
fi
if [ ! -f 20170825.tmp ]; then
  touch 20170825.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170825/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170825/short_range short_range_20170825.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170825/medium_range medium_range_20170825.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170825/
fi
if [ ! -f 20170826.tmp ]; then
  touch 20170826.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170826/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170826/short_range short_range_20170826.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170826/medium_range medium_range_20170826.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170826/
fi
if [ ! -f 20170827.tmp ]; then
  touch 20170827.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170827/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170827/short_range short_range_20170827.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170827/medium_range medium_range_20170827.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170827/
fi
if [ ! -f 20170828.tmp ]; then
  touch 20170828.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170828/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170828/short_range short_range_20170828.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170828/medium_range medium_range_20170828.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170828/
fi
if [ ! -f 20170829.tmp ]; then
  touch 20170829.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170829/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170829/short_range short_range_20170829.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170829/medium_range medium_range_20170829.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170829/
fi
if [ ! -f 20170830.tmp ]; then
  touch 20170830.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170830/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170830/short_range short_range_20170830.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170830/medium_range medium_range_20170830.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170830/
fi
if [ ! -f 20170831.tmp ]; then
  touch 20170831.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170831/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170831/short_range short_range_20170831.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170831/medium_range medium_range_20170831.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170831/
fi
if [ ! -f 20170901.tmp ]; then
  touch 20170901.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170901/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170901/short_range short_range_20170901.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170901/medium_range medium_range_20170901.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170901/
fi
if [ ! -f 20170902.tmp ]; then
  touch 20170902.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170902/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170902/short_range short_range_20170902.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170902/medium_range medium_range_20170902.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170902/
fi
if [ ! -f 20170903.tmp ]; then
  touch 20170903.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170903/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170903/short_range short_range_20170903.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170903/medium_range medium_range_20170903.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170903/
fi
if [ ! -f 20170904.tmp ]; then
  touch 20170904.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170904/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170904/short_range short_range_20170904.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170904/medium_range medium_range_20170904.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170904/
fi
if [ ! -f 20170905.tmp ]; then
  touch 20170905.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170905/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170905/short_range short_range_20170905.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170905/medium_range medium_range_20170905.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170905/
fi
if [ ! -f 20170906.tmp ]; then
  touch 20170906.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170906/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170906/short_range short_range_20170906.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170906/medium_range medium_range_20170906.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170906/
fi
if [ ! -f 20170907.tmp ]; then
  touch 20170907.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170907/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170907/short_range short_range_20170907.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170907/medium_range medium_range_20170907.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170907/
fi
if [ ! -f 20170908.tmp ]; then
  touch 20170908.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170908/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170908/short_range short_range_20170908.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170908/medium_range medium_range_20170908.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170908/
fi
if [ ! -f 20170909.tmp ]; then
  touch 20170909.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170909/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170909/short_range short_range_20170909.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170909/medium_range medium_range_20170909.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170909/
fi
if [ ! -f 20170910.tmp ]; then
  touch 20170910.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170910/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170910/short_range short_range_20170910.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170910/medium_range medium_range_20170910.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170910/
fi
if [ ! -f 20170911.tmp ]; then
  touch 20170911.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170911/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170911/short_range short_range_20170911.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170911/medium_range medium_range_20170911.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170911/
fi
if [ ! -f 20170912.tmp ]; then
  touch 20170912.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170912/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170912/short_range short_range_20170912.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170912/medium_range medium_range_20170912.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170912/
fi
if [ ! -f 20170913.tmp ]; then
  touch 20170913.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170913/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170913/short_range short_range_20170913.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170913/medium_range medium_range_20170913.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170913/
fi
if [ ! -f 20170914.tmp ]; then
  touch 20170914.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170914/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170914/short_range short_range_20170914.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170914/medium_range medium_range_20170914.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170914/
fi
if [ ! -f 20170915.tmp ]; then
  touch 20170915.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170915/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170915/short_range short_range_20170915.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170915/medium_range medium_range_20170915.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170915/
fi
if [ ! -f 20170916.tmp ]; then
  touch 20170916.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170916/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170916/short_range short_range_20170916.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170916/medium_range medium_range_20170916.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170916/
fi
if [ ! -f 20170917.tmp ]; then
  touch 20170917.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170917/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170917/short_range short_range_20170917.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170917/medium_range medium_range_20170917.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170917/
fi
if [ ! -f 20170918.tmp ]; then
  touch 20170918.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170918/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170918/short_range short_range_20170918.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170918/medium_range medium_range_20170918.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170918/
fi
if [ ! -f 20170919.tmp ]; then
  touch 20170919.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170919/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170919/short_range short_range_20170919.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170919/medium_range medium_range_20170919.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170919/
fi
if [ ! -f 20170920.tmp ]; then
  touch 20170920.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170920/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170920/short_range short_range_20170920.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170920/medium_range medium_range_20170920.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170920/
fi
if [ ! -f 20170921.tmp ]; then
  touch 20170921.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170921/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170921/short_range short_range_20170921.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170921/medium_range medium_range_20170921.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170921/
fi
if [ ! -f 20170922.tmp ]; then
  touch 20170922.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170922/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170922/short_range short_range_20170922.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170922/medium_range medium_range_20170922.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170922/
fi
if [ ! -f 20170923.tmp ]; then
  touch 20170923.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170923/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170923/short_range short_range_20170923.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170923/medium_range medium_range_20170923.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170923/
fi
if [ ! -f 20170924.tmp ]; then
  touch 20170924.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170924/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170924/short_range short_range_20170924.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170924/medium_range medium_range_20170924.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170924/
fi
if [ ! -f 20170925.tmp ]; then
  touch 20170925.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170925/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170925/short_range short_range_20170925.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170925/medium_range medium_range_20170925.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170925/
fi
if [ ! -f 20170926.tmp ]; then
  touch 20170926.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170926/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170926/short_range short_range_20170926.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170926/medium_range medium_range_20170926.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170926/
fi
if [ ! -f 20170927.tmp ]; then
  touch 20170927.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170927/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170927/short_range short_range_20170927.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170927/medium_range medium_range_20170927.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170927/
fi
if [ ! -f 20170928.tmp ]; then
  touch 20170928.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170928/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170928/short_range short_range_20170928.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170928/medium_range medium_range_20170928.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170928/
fi
if [ ! -f 20170929.tmp ]; then
  touch 20170929.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170929/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170929/short_range short_range_20170929.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170929/medium_range medium_range_20170929.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170929/
fi
if [ ! -f 20170930.tmp ]; then
  touch 20170930.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20170930/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170930/short_range short_range_20170930.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20170930/medium_range medium_range_20170930.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20170930/
fi
if [ ! -f 20171001.tmp ]; then
  touch 20171001.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171001/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171001/short_range short_range_20171001.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171001/medium_range medium_range_20171001.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171001/
fi
if [ ! -f 20171002.tmp ]; then
  touch 20171002.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171002/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171002/short_range short_range_20171002.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171002/medium_range medium_range_20171002.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171002/
fi
if [ ! -f 20171003.tmp ]; then
  touch 20171003.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171003/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171003/short_range short_range_20171003.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171003/medium_range medium_range_20171003.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171003/
fi
if [ ! -f 20171004.tmp ]; then
  touch 20171004.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171004/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171004/short_range short_range_20171004.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171004/medium_range medium_range_20171004.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171004/
fi
if [ ! -f 20171005.tmp ]; then
  touch 20171005.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171005/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171005/short_range short_range_20171005.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171005/medium_range medium_range_20171005.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171005/
fi
if [ ! -f 20171006.tmp ]; then
  touch 20171006.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171006/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171006/short_range short_range_20171006.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171006/medium_range medium_range_20171006.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171006/
fi
if [ ! -f 20171007.tmp ]; then
  touch 20171007.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171007/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171007/short_range short_range_20171007.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171007/medium_range medium_range_20171007.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171007/
fi
if [ ! -f 20171008.tmp ]; then
  touch 20171008.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171008/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171008/short_range short_range_20171008.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171008/medium_range medium_range_20171008.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171008/
fi
if [ ! -f 20171009.tmp ]; then
  touch 20171009.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171009/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171009/short_range short_range_20171009.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171009/medium_range medium_range_20171009.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171009/
fi
if [ ! -f 20171010.tmp ]; then
  touch 20171010.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171010/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171010/short_range short_range_20171010.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171010/medium_range medium_range_20171010.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171010/
fi
if [ ! -f 20171011.tmp ]; then
  touch 20171011.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171011/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171011/short_range short_range_20171011.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171011/medium_range medium_range_20171011.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171011/
fi
if [ ! -f 20171012.tmp ]; then
  touch 20171012.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171012/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171012/short_range short_range_20171012.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171012/medium_range medium_range_20171012.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171012/
fi
if [ ! -f 20171013.tmp ]; then
  touch 20171013.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171013/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171013/short_range short_range_20171013.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171013/medium_range medium_range_20171013.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171013/
fi
if [ ! -f 20171014.tmp ]; then
  touch 20171014.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171014/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171014/short_range short_range_20171014.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171014/medium_range medium_range_20171014.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171014/
fi
if [ ! -f 20171015.tmp ]; then
  touch 20171015.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171015/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171015/short_range short_range_20171015.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171015/medium_range medium_range_20171015.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171015/
fi
if [ ! -f 20171016.tmp ]; then
  touch 20171016.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171016/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171016/short_range short_range_20171016.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171016/medium_range medium_range_20171016.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171016/
fi
if [ ! -f 20171017.tmp ]; then
  touch 20171017.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171017/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171017/short_range short_range_20171017.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171017/medium_range medium_range_20171017.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171017/
fi
if [ ! -f 20171018.tmp ]; then
  touch 20171018.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171018/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171018/short_range short_range_20171018.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171018/medium_range medium_range_20171018.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171018/
fi
if [ ! -f 20171019.tmp ]; then
  touch 20171019.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171019/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171019/short_range short_range_20171019.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171019/medium_range medium_range_20171019.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171019/
fi
if [ ! -f 20171020.tmp ]; then
  touch 20171020.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171020/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171020/short_range short_range_20171020.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171020/medium_range medium_range_20171020.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171020/
fi
if [ ! -f 20171021.tmp ]; then
  touch 20171021.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171021/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171021/short_range short_range_20171021.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171021/medium_range medium_range_20171021.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171021/
fi
if [ ! -f 20171022.tmp ]; then
  touch 20171022.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171022/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171022/short_range short_range_20171022.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171022/medium_range medium_range_20171022.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171022/
fi
if [ ! -f 20171023.tmp ]; then
  touch 20171023.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171023/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171023/short_range short_range_20171023.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171023/medium_range medium_range_20171023.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171023/
fi
if [ ! -f 20171024.tmp ]; then
  touch 20171024.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171024/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171024/short_range short_range_20171024.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171024/medium_range medium_range_20171024.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171024/
fi
if [ ! -f 20171025.tmp ]; then
  touch 20171025.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171025/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171025/short_range short_range_20171025.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171025/medium_range medium_range_20171025.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171025/
fi
if [ ! -f 20171026.tmp ]; then
  touch 20171026.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171026/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171026/short_range short_range_20171026.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171026/medium_range medium_range_20171026.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171026/
fi
if [ ! -f 20171027.tmp ]; then
  touch 20171027.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171027/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171027/short_range short_range_20171027.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171027/medium_range medium_range_20171027.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171027/
fi
if [ ! -f 20171028.tmp ]; then
  touch 20171028.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171028/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171028/short_range short_range_20171028.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171028/medium_range medium_range_20171028.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171028/
fi
if [ ! -f 20171029.tmp ]; then
  touch 20171029.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171029/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171029/short_range short_range_20171029.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171029/medium_range medium_range_20171029.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171029/
fi
if [ ! -f 20171030.tmp ]; then
  touch 20171030.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171030/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171030/short_range short_range_20171030.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171030/medium_range medium_range_20171030.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171030/
fi
if [ ! -f 20171031.tmp ]; then
  touch 20171031.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171031/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171031/short_range short_range_20171031.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171031/medium_range medium_range_20171031.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171031/
fi
if [ ! -f 20171101.tmp ]; then
  touch 20171101.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171101/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171101/short_range short_range_20171101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171101/medium_range medium_range_20171101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171101/
fi
if [ ! -f 20171102.tmp ]; then
  touch 20171102.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171102/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171102/short_range short_range_20171102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171102/medium_range medium_range_20171102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171102/
fi
if [ ! -f 20171103.tmp ]; then
  touch 20171103.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171103/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171103/short_range short_range_20171103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171103/medium_range medium_range_20171103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171103/
fi
if [ ! -f 20171104.tmp ]; then
  touch 20171104.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171104/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171104/short_range short_range_20171104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171104/medium_range medium_range_20171104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171104/
fi
if [ ! -f 20171105.tmp ]; then
  touch 20171105.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171105/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171105/short_range short_range_20171105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171105/medium_range medium_range_20171105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171105/
fi
if [ ! -f 20171106.tmp ]; then
  touch 20171106.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171106/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171106/short_range short_range_20171106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171106/medium_range medium_range_20171106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171106/
fi
if [ ! -f 20171107.tmp ]; then
  touch 20171107.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171107/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171107/short_range short_range_20171107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171107/medium_range medium_range_20171107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171107/
fi
if [ ! -f 20171108.tmp ]; then
  touch 20171108.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171108/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171108/short_range short_range_20171108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171108/medium_range medium_range_20171108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171108/
fi
if [ ! -f 20171109.tmp ]; then
  touch 20171109.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171109/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171109/short_range short_range_20171109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171109/medium_range medium_range_20171109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171109/
fi
if [ ! -f 20171110.tmp ]; then
  touch 20171110.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171110/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171110/short_range short_range_20171110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171110/medium_range medium_range_20171110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171110/
fi
if [ ! -f 20171111.tmp ]; then
  touch 20171111.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171111/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171111/short_range short_range_20171111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171111/medium_range medium_range_20171111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171111/
fi
if [ ! -f 20171112.tmp ]; then
  touch 20171112.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171112/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171112/short_range short_range_20171112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171112/medium_range medium_range_20171112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171112/
fi
if [ ! -f 20171113.tmp ]; then
  touch 20171113.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171113/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171113/short_range short_range_20171113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171113/medium_range medium_range_20171113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171113/
fi
if [ ! -f 20171114.tmp ]; then
  touch 20171114.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171114/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171114/short_range short_range_20171114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171114/medium_range medium_range_20171114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171114/
fi
if [ ! -f 20171115.tmp ]; then
  touch 20171115.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171115/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171115/short_range short_range_20171115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171115/medium_range medium_range_20171115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171115/
fi
if [ ! -f 20171116.tmp ]; then
  touch 20171116.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171116/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171116/short_range short_range_20171116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171116/medium_range medium_range_20171116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171116/
fi
if [ ! -f 20171117.tmp ]; then
  touch 20171117.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171117/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171117/short_range short_range_20171117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171117/medium_range medium_range_20171117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171117/
fi
if [ ! -f 20171118.tmp ]; then
  touch 20171118.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171118/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171118/short_range short_range_20171118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171118/medium_range medium_range_20171118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171118/
fi
if [ ! -f 20171119.tmp ]; then
  touch 20171119.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171119/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171119/short_range short_range_20171119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171119/medium_range medium_range_20171119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171119/
fi
if [ ! -f 20171120.tmp ]; then
  touch 20171120.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171120/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171120/short_range short_range_20171120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171120/medium_range medium_range_20171120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171120/
fi
if [ ! -f 20171121.tmp ]; then
  touch 20171121.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171121/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171121/short_range short_range_20171121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171121/medium_range medium_range_20171121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171121/
fi
if [ ! -f 20171122.tmp ]; then
  touch 20171122.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171122/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171122/short_range short_range_20171122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171122/medium_range medium_range_20171122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171122/
fi
if [ ! -f 20171123.tmp ]; then
  touch 20171123.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171123/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171123/short_range short_range_20171123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171123/medium_range medium_range_20171123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171123/
fi
if [ ! -f 20171124.tmp ]; then
  touch 20171124.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171124/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171124/short_range short_range_20171124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171124/medium_range medium_range_20171124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171124/
fi
if [ ! -f 20171125.tmp ]; then
  touch 20171125.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171125/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171125/short_range short_range_20171125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171125/medium_range medium_range_20171125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171125/
fi
if [ ! -f 20171126.tmp ]; then
  touch 20171126.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171126/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171126/short_range short_range_20171126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171126/medium_range medium_range_20171126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171126/
fi
if [ ! -f 20171127.tmp ]; then
  touch 20171127.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171127/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171127/short_range short_range_20171127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171127/medium_range medium_range_20171127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171127/
fi
if [ ! -f 20171128.tmp ]; then
  touch 20171128.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171128/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171128/short_range short_range_20171128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171128/medium_range medium_range_20171128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171128/
fi
if [ ! -f 20171129.tmp ]; then
  touch 20171129.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171129/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171129/short_range short_range_20171129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171129/medium_range medium_range_20171129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171129/
fi
if [ ! -f 20171130.tmp ]; then
  touch 20171130.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171130/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171130/short_range short_range_20171130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171130/medium_range medium_range_20171130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171130/
fi
if [ ! -f 20171201.tmp ]; then
  touch 20171201.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171201/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171201/short_range short_range_20171201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171201/medium_range medium_range_20171201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171201/
fi
if [ ! -f 20171202.tmp ]; then
  touch 20171202.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171202/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171202/short_range short_range_20171202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171202/medium_range medium_range_20171202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171202/
fi
if [ ! -f 20171203.tmp ]; then
  touch 20171203.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171203/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171203/short_range short_range_20171203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171203/medium_range medium_range_20171203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171203/
fi
if [ ! -f 20171204.tmp ]; then
  touch 20171204.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171204/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171204/short_range short_range_20171204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171204/medium_range medium_range_20171204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171204/
fi
if [ ! -f 20171205.tmp ]; then
  touch 20171205.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171205/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171205/short_range short_range_20171205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171205/medium_range medium_range_20171205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171205/
fi
if [ ! -f 20171206.tmp ]; then
  touch 20171206.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171206/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171206/short_range short_range_20171206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171206/medium_range medium_range_20171206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171206/
fi
if [ ! -f 20171207.tmp ]; then
  touch 20171207.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171207/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171207/short_range short_range_20171207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171207/medium_range medium_range_20171207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171207/
fi
if [ ! -f 20171208.tmp ]; then
  touch 20171208.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171208/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171208/short_range short_range_20171208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171208/medium_range medium_range_20171208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171208/
fi
if [ ! -f 20171209.tmp ]; then
  touch 20171209.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171209/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171209/short_range short_range_20171209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171209/medium_range medium_range_20171209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171209/
fi
if [ ! -f 20171210.tmp ]; then
  touch 20171210.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171210/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171210/short_range short_range_20171210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171210/medium_range medium_range_20171210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171210/
fi
if [ ! -f 20171211.tmp ]; then
  touch 20171211.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171211/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171211/short_range short_range_20171211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171211/medium_range medium_range_20171211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171211/
fi
if [ ! -f 20171212.tmp ]; then
  touch 20171212.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171212/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171212/short_range short_range_20171212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171212/medium_range medium_range_20171212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171212/
fi
if [ ! -f 20171213.tmp ]; then
  touch 20171213.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171213/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171213/short_range short_range_20171213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171213/medium_range medium_range_20171213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171213/
fi
if [ ! -f 20171214.tmp ]; then
  touch 20171214.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171214/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171214/short_range short_range_20171214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171214/medium_range medium_range_20171214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171214/
fi
if [ ! -f 20171215.tmp ]; then
  touch 20171215.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171215/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171215/short_range short_range_20171215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171215/medium_range medium_range_20171215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171215/
fi
if [ ! -f 20171216.tmp ]; then
  touch 20171216.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171216/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171216/short_range short_range_20171216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171216/medium_range medium_range_20171216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171216/
fi
if [ ! -f 20171217.tmp ]; then
  touch 20171217.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171217/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171217/short_range short_range_20171217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171217/medium_range medium_range_20171217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171217/
fi
if [ ! -f 20171218.tmp ]; then
  touch 20171218.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171218/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171218/short_range short_range_20171218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171218/medium_range medium_range_20171218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171218/
fi
if [ ! -f 20171219.tmp ]; then
  touch 20171219.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171219/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171219/short_range short_range_20171219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171219/medium_range medium_range_20171219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171219/
fi
if [ ! -f 20171220.tmp ]; then
  touch 20171220.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171220/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171220/short_range short_range_20171220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171220/medium_range medium_range_20171220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171220/
fi
if [ ! -f 20171221.tmp ]; then
  touch 20171221.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171221/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171221/short_range short_range_20171221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171221/medium_range medium_range_20171221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171221/
fi
if [ ! -f 20171222.tmp ]; then
  touch 20171222.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171222/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171222/short_range short_range_20171222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171222/medium_range medium_range_20171222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171222/
fi
if [ ! -f 20171223.tmp ]; then
  touch 20171223.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171223/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171223/short_range short_range_20171223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171223/medium_range medium_range_20171223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171223/
fi
if [ ! -f 20171224.tmp ]; then
  touch 20171224.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171224/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171224/short_range short_range_20171224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171224/medium_range medium_range_20171224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171224/
fi
if [ ! -f 20171225.tmp ]; then
  touch 20171225.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171225/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171225/short_range short_range_20171225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171225/medium_range medium_range_20171225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171225/
fi
if [ ! -f 20171226.tmp ]; then
  touch 20171226.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171226/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171226/short_range short_range_20171226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171226/medium_range medium_range_20171226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171226/
fi
if [ ! -f 20171227.tmp ]; then
  touch 20171227.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171227/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171227/short_range short_range_20171227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171227/medium_range medium_range_20171227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171227/
fi
if [ ! -f 20171228.tmp ]; then
  touch 20171228.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171228/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171228/short_range short_range_20171228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171228/medium_range medium_range_20171228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171228/
fi
if [ ! -f 20171229.tmp ]; then
  touch 20171229.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171229/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171229/short_range short_range_20171229.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171229/medium_range medium_range_20171229.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171229/
fi
if [ ! -f 20171230.tmp ]; then
  touch 20171230.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171230/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171230/short_range short_range_20171230.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171230/medium_range medium_range_20171230.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171230/
fi
if [ ! -f 20171231.tmp ]; then
  touch 20171231.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20171231/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171231/short_range short_range_20171231.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20171231/medium_range medium_range_20171231.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20171231/
fi
if [ ! -f 20180101.tmp ]; then
  touch 20180101.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180101/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180101/short_range short_range_20180101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180101/medium_range medium_range_20180101.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180101/
fi
if [ ! -f 20180102.tmp ]; then
  touch 20180102.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180102/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180102/short_range short_range_20180102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180102/medium_range medium_range_20180102.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180102/
fi
if [ ! -f 20180103.tmp ]; then
  touch 20180103.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180103/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180103/short_range short_range_20180103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180103/medium_range medium_range_20180103.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180103/
fi
if [ ! -f 20180104.tmp ]; then
  touch 20180104.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180104/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180104/short_range short_range_20180104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180104/medium_range medium_range_20180104.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180104/
fi
if [ ! -f 20180105.tmp ]; then
  touch 20180105.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180105/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180105/short_range short_range_20180105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180105/medium_range medium_range_20180105.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180105/
fi
if [ ! -f 20180106.tmp ]; then
  touch 20180106.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180106/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180106/short_range short_range_20180106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180106/medium_range medium_range_20180106.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180106/
fi
if [ ! -f 20180107.tmp ]; then
  touch 20180107.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180107/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180107/short_range short_range_20180107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180107/medium_range medium_range_20180107.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180107/
fi
if [ ! -f 20180108.tmp ]; then
  touch 20180108.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180108/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180108/short_range short_range_20180108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180108/medium_range medium_range_20180108.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180108/
fi
if [ ! -f 20180109.tmp ]; then
  touch 20180109.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180109/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180109/short_range short_range_20180109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180109/medium_range medium_range_20180109.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180109/
fi
if [ ! -f 20180110.tmp ]; then
  touch 20180110.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180110/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180110/short_range short_range_20180110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180110/medium_range medium_range_20180110.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180110/
fi
if [ ! -f 20180111.tmp ]; then
  touch 20180111.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180111/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180111/short_range short_range_20180111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180111/medium_range medium_range_20180111.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180111/
fi
if [ ! -f 20180112.tmp ]; then
  touch 20180112.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180112/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180112/short_range short_range_20180112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180112/medium_range medium_range_20180112.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180112/
fi
if [ ! -f 20180113.tmp ]; then
  touch 20180113.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180113/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180113/short_range short_range_20180113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180113/medium_range medium_range_20180113.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180113/
fi
if [ ! -f 20180114.tmp ]; then
  touch 20180114.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180114/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180114/short_range short_range_20180114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180114/medium_range medium_range_20180114.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180114/
fi
if [ ! -f 20180115.tmp ]; then
  touch 20180115.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180115/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180115/short_range short_range_20180115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180115/medium_range medium_range_20180115.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180115/
fi
if [ ! -f 20180116.tmp ]; then
  touch 20180116.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180116/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180116/short_range short_range_20180116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180116/medium_range medium_range_20180116.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180116/
fi
if [ ! -f 20180117.tmp ]; then
  touch 20180117.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180117/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180117/short_range short_range_20180117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180117/medium_range medium_range_20180117.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180117/
fi
if [ ! -f 20180118.tmp ]; then
  touch 20180118.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180118/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180118/short_range short_range_20180118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180118/medium_range medium_range_20180118.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180118/
fi
if [ ! -f 20180119.tmp ]; then
  touch 20180119.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180119/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180119/short_range short_range_20180119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180119/medium_range medium_range_20180119.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180119/
fi
if [ ! -f 20180120.tmp ]; then
  touch 20180120.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180120/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180120/short_range short_range_20180120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180120/medium_range medium_range_20180120.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180120/
fi
if [ ! -f 20180121.tmp ]; then
  touch 20180121.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180121/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180121/short_range short_range_20180121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180121/medium_range medium_range_20180121.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180121/
fi
if [ ! -f 20180122.tmp ]; then
  touch 20180122.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180122/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180122/short_range short_range_20180122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180122/medium_range medium_range_20180122.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180122/
fi
if [ ! -f 20180123.tmp ]; then
  touch 20180123.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180123/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180123/short_range short_range_20180123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180123/medium_range medium_range_20180123.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180123/
fi
if [ ! -f 20180124.tmp ]; then
  touch 20180124.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180124/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180124/short_range short_range_20180124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180124/medium_range medium_range_20180124.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180124/
fi
if [ ! -f 20180125.tmp ]; then
  touch 20180125.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180125/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180125/short_range short_range_20180125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180125/medium_range medium_range_20180125.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180125/
fi
if [ ! -f 20180126.tmp ]; then
  touch 20180126.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180126/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180126/short_range short_range_20180126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180126/medium_range medium_range_20180126.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180126/
fi
if [ ! -f 20180127.tmp ]; then
  touch 20180127.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180127/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180127/short_range short_range_20180127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180127/medium_range medium_range_20180127.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180127/
fi
if [ ! -f 20180128.tmp ]; then
  touch 20180128.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180128/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180128/short_range short_range_20180128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180128/medium_range medium_range_20180128.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180128/
fi
if [ ! -f 20180129.tmp ]; then
  touch 20180129.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180129/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180129/short_range short_range_20180129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180129/medium_range medium_range_20180129.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180129/
fi
if [ ! -f 20180130.tmp ]; then
  touch 20180130.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180130/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180130/short_range short_range_20180130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180130/medium_range medium_range_20180130.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180130/
fi
if [ ! -f 20180131.tmp ]; then
  touch 20180131.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180131/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180131/short_range short_range_20180131.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180131/medium_range medium_range_20180131.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180131/
fi
if [ ! -f 20180201.tmp ]; then
  touch 20180201.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180201/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180201/short_range short_range_20180201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180201/medium_range medium_range_20180201.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180201/
fi
if [ ! -f 20180202.tmp ]; then
  touch 20180202.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180202/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180202/short_range short_range_20180202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180202/medium_range medium_range_20180202.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180202/
fi
if [ ! -f 20180203.tmp ]; then
  touch 20180203.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180203/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180203/short_range short_range_20180203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180203/medium_range medium_range_20180203.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180203/
fi
if [ ! -f 20180204.tmp ]; then
  touch 20180204.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180204/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180204/short_range short_range_20180204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180204/medium_range medium_range_20180204.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180204/
fi
if [ ! -f 20180205.tmp ]; then
  touch 20180205.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180205/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180205/short_range short_range_20180205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180205/medium_range medium_range_20180205.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180205/
fi
if [ ! -f 20180206.tmp ]; then
  touch 20180206.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180206/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180206/short_range short_range_20180206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180206/medium_range medium_range_20180206.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180206/
fi
if [ ! -f 20180207.tmp ]; then
  touch 20180207.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180207/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180207/short_range short_range_20180207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180207/medium_range medium_range_20180207.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180207/
fi
if [ ! -f 20180208.tmp ]; then
  touch 20180208.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180208/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180208/short_range short_range_20180208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180208/medium_range medium_range_20180208.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180208/
fi
if [ ! -f 20180209.tmp ]; then
  touch 20180209.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180209/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180209/short_range short_range_20180209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180209/medium_range medium_range_20180209.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180209/
fi
if [ ! -f 20180210.tmp ]; then
  touch 20180210.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180210/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180210/short_range short_range_20180210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180210/medium_range medium_range_20180210.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180210/
fi
if [ ! -f 20180211.tmp ]; then
  touch 20180211.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180211/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180211/short_range short_range_20180211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180211/medium_range medium_range_20180211.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180211/
fi
if [ ! -f 20180212.tmp ]; then
  touch 20180212.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180212/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180212/short_range short_range_20180212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180212/medium_range medium_range_20180212.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180212/
fi
if [ ! -f 20180213.tmp ]; then
  touch 20180213.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180213/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180213/short_range short_range_20180213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180213/medium_range medium_range_20180213.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180213/
fi
if [ ! -f 20180214.tmp ]; then
  touch 20180214.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180214/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180214/short_range short_range_20180214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180214/medium_range medium_range_20180214.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180214/
fi
if [ ! -f 20180215.tmp ]; then
  touch 20180215.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180215/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180215/short_range short_range_20180215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180215/medium_range medium_range_20180215.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180215/
fi
if [ ! -f 20180216.tmp ]; then
  touch 20180216.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180216/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180216/short_range short_range_20180216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180216/medium_range medium_range_20180216.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180216/
fi
if [ ! -f 20180217.tmp ]; then
  touch 20180217.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180217/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180217/short_range short_range_20180217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180217/medium_range medium_range_20180217.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180217/
fi
if [ ! -f 20180218.tmp ]; then
  touch 20180218.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180218/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180218/short_range short_range_20180218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180218/medium_range medium_range_20180218.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180218/
fi
if [ ! -f 20180219.tmp ]; then
  touch 20180219.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180219/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180219/short_range short_range_20180219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180219/medium_range medium_range_20180219.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180219/
fi
if [ ! -f 20180220.tmp ]; then
  touch 20180220.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180220/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180220/short_range short_range_20180220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180220/medium_range medium_range_20180220.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180220/
fi
if [ ! -f 20180221.tmp ]; then
  touch 20180221.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180221/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180221/short_range short_range_20180221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180221/medium_range medium_range_20180221.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180221/
fi
if [ ! -f 20180222.tmp ]; then
  touch 20180222.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180222/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180222/short_range short_range_20180222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180222/medium_range medium_range_20180222.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180222/
fi
if [ ! -f 20180223.tmp ]; then
  touch 20180223.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180223/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180223/short_range short_range_20180223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180223/medium_range medium_range_20180223.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180223/
fi
if [ ! -f 20180224.tmp ]; then
  touch 20180224.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180224/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180224/short_range short_range_20180224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180224/medium_range medium_range_20180224.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180224/
fi
if [ ! -f 20180225.tmp ]; then
  touch 20180225.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180225/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180225/short_range short_range_20180225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180225/medium_range medium_range_20180225.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180225/
fi
if [ ! -f 20180226.tmp ]; then
  touch 20180226.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180226/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180226/short_range short_range_20180226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180226/medium_range medium_range_20180226.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180226/
fi
if [ ! -f 20180227.tmp ]; then
  touch 20180227.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180227/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180227/short_range short_range_20180227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180227/medium_range medium_range_20180227.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180227/
fi
if [ ! -f 20180228.tmp ]; then
  touch 20180228.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180228/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180228/short_range short_range_20180228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180228/medium_range medium_range_20180228.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180228/
fi
if [ ! -f 20180301.tmp ]; then
  touch 20180301.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180301/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180301/short_range short_range_20180301.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180301/medium_range medium_range_20180301.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180301/
fi
if [ ! -f 20180302.tmp ]; then
  touch 20180302.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180302/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180302/short_range short_range_20180302.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180302/medium_range medium_range_20180302.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180302/
fi
if [ ! -f 20180303.tmp ]; then
  touch 20180303.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180303/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180303/short_range short_range_20180303.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180303/medium_range medium_range_20180303.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180303/
fi
if [ ! -f 20180304.tmp ]; then
  touch 20180304.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180304/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180304/short_range short_range_20180304.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180304/medium_range medium_range_20180304.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180304/
fi
if [ ! -f 20180305.tmp ]; then
  touch 20180305.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180305/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180305/short_range short_range_20180305.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180305/medium_range medium_range_20180305.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180305/
fi
if [ ! -f 20180306.tmp ]; then
  touch 20180306.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180306/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180306/short_range short_range_20180306.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180306/medium_range medium_range_20180306.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180306/
fi
if [ ! -f 20180307.tmp ]; then
  touch 20180307.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180307/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180307/short_range short_range_20180307.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180307/medium_range medium_range_20180307.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180307/
fi
if [ ! -f 20180308.tmp ]; then
  touch 20180308.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180308/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180308/short_range short_range_20180308.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180308/medium_range medium_range_20180308.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180308/
fi
if [ ! -f 20180309.tmp ]; then
  touch 20180309.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180309/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180309/short_range short_range_20180309.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180309/medium_range medium_range_20180309.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180309/
fi
if [ ! -f 20180310.tmp ]; then
  touch 20180310.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180310/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180310/short_range short_range_20180310.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180310/medium_range medium_range_20180310.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180310/
fi
if [ ! -f 20180311.tmp ]; then
  touch 20180311.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180311/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180311/short_range short_range_20180311.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180311/medium_range medium_range_20180311.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180311/
fi
if [ ! -f 20180312.tmp ]; then
  touch 20180312.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180312/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180312/short_range short_range_20180312.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180312/medium_range medium_range_20180312.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180312/
fi
if [ ! -f 20180313.tmp ]; then
  touch 20180313.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180313/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180313/short_range short_range_20180313.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180313/medium_range medium_range_20180313.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180313/
fi
if [ ! -f 20180314.tmp ]; then
  touch 20180314.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180314/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180314/short_range short_range_20180314.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180314/medium_range medium_range_20180314.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180314/
fi
if [ ! -f 20180315.tmp ]; then
  touch 20180315.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180315/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180315/short_range short_range_20180315.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180315/medium_range medium_range_20180315.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180315/
fi
if [ ! -f 20180316.tmp ]; then
  touch 20180316.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180316/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180316/short_range short_range_20180316.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180316/medium_range medium_range_20180316.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180316/
fi
if [ ! -f 20180317.tmp ]; then
  touch 20180317.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180317/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180317/short_range short_range_20180317.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180317/medium_range medium_range_20180317.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180317/
fi
if [ ! -f 20180318.tmp ]; then
  touch 20180318.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180318/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180318/short_range short_range_20180318.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180318/medium_range medium_range_20180318.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180318/
fi
if [ ! -f 20180319.tmp ]; then
  touch 20180319.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180319/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180319/short_range short_range_20180319.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180319/medium_range medium_range_20180319.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180319/
fi
if [ ! -f 20180320.tmp ]; then
  touch 20180320.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180320/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180320/short_range short_range_20180320.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180320/medium_range medium_range_20180320.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180320/
fi
if [ ! -f 20180321.tmp ]; then
  touch 20180321.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180321/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180321/short_range short_range_20180321.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180321/medium_range medium_range_20180321.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180321/
fi
if [ ! -f 20180322.tmp ]; then
  touch 20180322.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180322/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180322/short_range short_range_20180322.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180322/medium_range medium_range_20180322.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180322/
fi
if [ ! -f 20180323.tmp ]; then
  touch 20180323.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180323/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180323/short_range short_range_20180323.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180323/medium_range medium_range_20180323.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180323/
fi
if [ ! -f 20180324.tmp ]; then
  touch 20180324.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180324/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180324/short_range short_range_20180324.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180324/medium_range medium_range_20180324.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180324/
fi
if [ ! -f 20180325.tmp ]; then
  touch 20180325.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180325/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180325/short_range short_range_20180325.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180325/medium_range medium_range_20180325.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180325/
fi
if [ ! -f 20180326.tmp ]; then
  touch 20180326.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180326/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180326/short_range short_range_20180326.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180326/medium_range medium_range_20180326.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180326/
fi
if [ ! -f 20180327.tmp ]; then
  touch 20180327.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180327/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180327/short_range short_range_20180327.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180327/medium_range medium_range_20180327.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180327/
fi
if [ ! -f 20180328.tmp ]; then
  touch 20180328.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180328/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180328/short_range short_range_20180328.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180328/medium_range medium_range_20180328.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180328/
fi
if [ ! -f 20180329.tmp ]; then
  touch 20180329.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180329/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180329/short_range short_range_20180329.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180329/medium_range medium_range_20180329.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180329/
fi
if [ ! -f 20180330.tmp ]; then
  touch 20180330.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180330/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180330/short_range short_range_20180330.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180330/medium_range medium_range_20180330.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180330/
fi
if [ ! -f 20180331.tmp ]; then
  touch 20180331.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180331/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180331/short_range short_range_20180331.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180331/medium_range medium_range_20180331.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180331/
fi
if [ ! -f 20180401.tmp ]; then
  touch 20180401.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180401/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180401/short_range short_range_20180401.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180401/medium_range medium_range_20180401.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180401/
fi
if [ ! -f 20180402.tmp ]; then
  touch 20180402.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180402/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180402/short_range short_range_20180402.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180402/medium_range medium_range_20180402.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180402/
fi
if [ ! -f 20180403.tmp ]; then
  touch 20180403.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180403/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180403/short_range short_range_20180403.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180403/medium_range medium_range_20180403.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180403/
fi
if [ ! -f 20180404.tmp ]; then
  touch 20180404.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180404/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180404/short_range short_range_20180404.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180404/medium_range medium_range_20180404.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180404/
fi
if [ ! -f 20180405.tmp ]; then
  touch 20180405.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180405/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180405/short_range short_range_20180405.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180405/medium_range medium_range_20180405.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180405/
fi
if [ ! -f 20180406.tmp ]; then
  touch 20180406.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180406/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180406/short_range short_range_20180406.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180406/medium_range medium_range_20180406.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180406/
fi
if [ ! -f 20180407.tmp ]; then
  touch 20180407.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180407/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180407/short_range short_range_20180407.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180407/medium_range medium_range_20180407.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180407/
fi
if [ ! -f 20180408.tmp ]; then
  touch 20180408.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180408/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180408/short_range short_range_20180408.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180408/medium_range medium_range_20180408.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180408/
fi
if [ ! -f 20180409.tmp ]; then
  touch 20180409.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180409/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180409/short_range short_range_20180409.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180409/medium_range medium_range_20180409.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180409/
fi
if [ ! -f 20180410.tmp ]; then
  touch 20180410.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180410/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180410/short_range short_range_20180410.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180410/medium_range medium_range_20180410.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180410/
fi
if [ ! -f 20180411.tmp ]; then
  touch 20180411.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180411/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180411/short_range short_range_20180411.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180411/medium_range medium_range_20180411.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180411/
fi
if [ ! -f 20180412.tmp ]; then
  touch 20180412.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180412/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180412/short_range short_range_20180412.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180412/medium_range medium_range_20180412.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180412/
fi
if [ ! -f 20180413.tmp ]; then
  touch 20180413.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180413/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180413/short_range short_range_20180413.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180413/medium_range medium_range_20180413.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180413/
fi
if [ ! -f 20180414.tmp ]; then
  touch 20180414.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180414/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180414/short_range short_range_20180414.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180414/medium_range medium_range_20180414.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180414/
fi
if [ ! -f 20180415.tmp ]; then
  touch 20180415.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180415/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180415/short_range short_range_20180415.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180415/medium_range medium_range_20180415.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180415/
fi
if [ ! -f 20180416.tmp ]; then
  touch 20180416.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180416/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180416/short_range short_range_20180416.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180416/medium_range medium_range_20180416.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180416/
fi
if [ ! -f 20180417.tmp ]; then
  touch 20180417.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180417/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180417/short_range short_range_20180417.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180417/medium_range medium_range_20180417.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180417/
fi
if [ ! -f 20180418.tmp ]; then
  touch 20180418.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180418/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180418/short_range short_range_20180418.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180418/medium_range medium_range_20180418.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180418/
fi
if [ ! -f 20180419.tmp ]; then
  touch 20180419.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180419/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180419/short_range short_range_20180419.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180419/medium_range medium_range_20180419.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180419/
fi
if [ ! -f 20180420.tmp ]; then
  touch 20180420.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180420/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180420/short_range short_range_20180420.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180420/medium_range medium_range_20180420.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180420/
fi
if [ ! -f 20180421.tmp ]; then
  touch 20180421.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180421/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180421/short_range short_range_20180421.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180421/medium_range medium_range_20180421.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180421/
fi
if [ ! -f 20180422.tmp ]; then
  touch 20180422.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180422/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180422/short_range short_range_20180422.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180422/medium_range medium_range_20180422.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180422/
fi
if [ ! -f 20180423.tmp ]; then
  touch 20180423.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180423/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180423/short_range short_range_20180423.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180423/medium_range medium_range_20180423.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180423/
fi
if [ ! -f 20180424.tmp ]; then
  touch 20180424.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180424/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180424/short_range short_range_20180424.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180424/medium_range medium_range_20180424.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180424/
fi
if [ ! -f 20180425.tmp ]; then
  touch 20180425.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180425/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180425/short_range short_range_20180425.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180425/medium_range medium_range_20180425.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180425/
fi
if [ ! -f 20180426.tmp ]; then
  touch 20180426.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180426/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180426/short_range short_range_20180426.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180426/medium_range medium_range_20180426.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180426/
fi
if [ ! -f 20180427.tmp ]; then
  touch 20180427.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180427/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180427/short_range short_range_20180427.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180427/medium_range medium_range_20180427.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180427/
fi
if [ ! -f 20180428.tmp ]; then
  touch 20180428.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180428/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180428/short_range short_range_20180428.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180428/medium_range medium_range_20180428.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180428/
fi
if [ ! -f 20180429.tmp ]; then
  touch 20180429.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180429/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180429/short_range short_range_20180429.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180429/medium_range medium_range_20180429.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180429/
fi
if [ ! -f 20180430.tmp ]; then
  touch 20180430.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180430/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180430/short_range short_range_20180430.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180430/medium_range medium_range_20180430.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180430/
fi
if [ ! -f 20180501.tmp ]; then
  touch 20180501.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180501/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180501/short_range short_range_20180501.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180501/medium_range medium_range_20180501.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180501/
fi
if [ ! -f 20180502.tmp ]; then
  touch 20180502.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180502/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180502/short_range short_range_20180502.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180502/medium_range medium_range_20180502.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180502/
fi
if [ ! -f 20180503.tmp ]; then
  touch 20180503.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180503/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180503/short_range short_range_20180503.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180503/medium_range medium_range_20180503.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180503/
fi
if [ ! -f 20180504.tmp ]; then
  touch 20180504.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180504/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180504/short_range short_range_20180504.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180504/medium_range medium_range_20180504.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180504/
fi
if [ ! -f 20180505.tmp ]; then
  touch 20180505.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180505/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180505/short_range short_range_20180505.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180505/medium_range medium_range_20180505.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180505/
fi
if [ ! -f 20180506.tmp ]; then
  touch 20180506.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180506/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180506/short_range short_range_20180506.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180506/medium_range medium_range_20180506.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180506/
fi
if [ ! -f 20180507.tmp ]; then
  touch 20180507.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180507/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180507/short_range short_range_20180507.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180507/medium_range medium_range_20180507.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180507/
fi
if [ ! -f 20180508.tmp ]; then
  touch 20180508.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180508/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180508/short_range short_range_20180508.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180508/medium_range medium_range_20180508.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180508/
fi
if [ ! -f 20180509.tmp ]; then
  touch 20180509.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180509/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180509/short_range short_range_20180509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180509/medium_range medium_range_20180509.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180509/
fi
if [ ! -f 20180510.tmp ]; then
  touch 20180510.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180510/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180510/short_range short_range_20180510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180510/medium_range medium_range_20180510.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180510/
fi
if [ ! -f 20180511.tmp ]; then
  touch 20180511.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180511/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180511/short_range short_range_20180511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180511/medium_range medium_range_20180511.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180511/
fi
if [ ! -f 20180512.tmp ]; then
  touch 20180512.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180512/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180512/short_range short_range_20180512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180512/medium_range medium_range_20180512.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180512/
fi
if [ ! -f 20180513.tmp ]; then
  touch 20180513.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180513/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180513/short_range short_range_20180513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180513/medium_range medium_range_20180513.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180513/
fi
if [ ! -f 20180514.tmp ]; then
  touch 20180514.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180514/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180514/short_range short_range_20180514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180514/medium_range medium_range_20180514.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180514/
fi
if [ ! -f 20180515.tmp ]; then
  touch 20180515.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180515/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180515/short_range short_range_20180515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180515/medium_range medium_range_20180515.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180515/
fi
if [ ! -f 20180516.tmp ]; then
  touch 20180516.tmp
  wget -r -np -nH -q -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/nwm.20180516/ 
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180516/short_range short_range_20180516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  bash nwm_subset/nwm_cull/fmrc_converter.sh nwm/nwm.20180516/medium_range medium_range_20180516.nc /mnt/tmpfs/ nwm_subset/nwm_cull/ nwm_subset/nexus_locations/nwis_comids.rds
  rm -r nwm/nwm.20180516/
fi