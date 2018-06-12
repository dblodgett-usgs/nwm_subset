#!/bin/bash

function ncattget { ncks --trd -M -m ${3} | grep -E -i "^${2} attribute [0-9]+: ${1}" | cut -f 11- -d ' ' | sort ; }

in_dir=$1
out_file=$2
temp_dir=$3

if [ -f $out_file ]; then
	exit 0
fi
touch $out_file

temp_dir_use=${temp_dir}/_nwm_temp
rm -rf $temp_dir_use
mkdir $temp_dir_use
ff=${temp_dir_use}/$out_file
tt=${temp_dir_use}/temp 
mkdir $tt
cp ${in_dir}/*.nc $tt
in_files=${tt}/*
in_files=( $in_files )
sf=$(ncattget scale_factor streamflow ${in_files[0]})
for f in ${tt}/*; do
  ncks -h --exclude -v nudge,velocity,q_lateral,qBtmVertRunoff,qBucket,qSfcLatRunoff -O $f $f
  ncap2 -h -O -s 'streamflow[$time,$feature_id]=streamflow' $f $f
  ncatted -h -O -a "scale_factor,streamflow,o,f,$sf" $f $f
  # ncks  -h -O --cnk_plc g3d --cnk_dmn feature_id,1 $f $f
done
ncrcat -h ${tt}/*.nc $ff # > /dev/null 2>&1
ncks -h -A -v latitude,longitude NWM_v1.2_nc_tools_v1/spatialMetadataFiles/nwm-v1.2-channel_spatial_index.nc $ff
# ncks  -h -O --cnk_plc g3d --cnk_dmn feature_id,1 --deflate=1 $ff $ff
ncatted -h -O -a "title,global,a,c,NWM Forcast Model Run Collection" -a "axis,time,a,c,T" -a "coordinates,streamflow,m,c,longitude latitude time reference_time" $ff $ff
ncatted -h -O -a "model_initialization_time,global,d,," -a "model_output_valid_time,global,d,," -a "stream_order_output,global,d,," -a "model_version,global,d,," -a "dev_OVRTSWCRT,global,d,," -a "dev_NOAH_TIMESTEP,global,d,," -a "dev_channel_only,global,d,," -a "dev_channelBucket_only,global,d,," -a "dev,global,d,," -a "cdm_datatype,global,d,," -a "station_dimension,global,d,," -a "Conventions,global,m,c,CF-1.7" -a "valid_range,,d,," $ff $ff
nccopy -k nc3 $ff $out_files
rm $ff
rm -rf $temp_dir_use
