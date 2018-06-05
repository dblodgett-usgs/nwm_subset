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
tt=${temp_dir_use}/temp
mkdir $tt
cp ${in_dir}/*.nc $tt
ff=${temp_dir_use}/$out_file
ncrcat -h ${tt}/* $ff # > /dev/null 2>&1
rm -r ${tt}
ncks -h -O --fix_rec_dmn time $ff $ff
ncks -h -O --mk_rec_dmn reference_time $ff $ff
sf=$(ncattget scale_factor streamflow $ff)
ncap2 -h -O -s 'time[$reference_time,$time]=time' $ff $ff
ncap2 -h -O -s 'streamflow[$reference_time,$time,$feature_id]=streamflow' $ff $ff
ncatted -h -O -a "scale_factor,streamflow,o,f,$sf" $ff $ff
ncks -h -A -v latitude,longitude NWM_v1.2_nc_tools_v1/spatialMetadataFiles/nwm-v1.2-channel_spatial_index.nc $ff
ncpdq -h -O -a reference_time,time,feature_id $ff $ff
ncks  -h -O --cnk_plc g3d --cnk_dmn feature_id,1 --deflate=1 $ff $ff
ncatted -h -O -a "title,global,a,c,NWM Forcast Model Run Collection" -a "axis,time,a,c,T" -a "coordinates,streamflow,m,c,longitude latitude time reference_time" $ff $ff
ncatted -h -O -a "model_initialization_time,global,d,," -a "model_output_valid_time,global,d,," -a "stream_order_output,global,d,," -a "model_version,global,d,," -a "dev_OVRTSWCRT,global,d,," -a "dev_NOAH_TIMESTEP,global,d,," -a "dev_channel_only,global,d,," -a "dev_channelBucket_only,global,d,," -a "dev,global,d,," -a "cdm_datatype,global,d,," -a "station_dimension,global,d,," -a "Conventions,global,m,c,CF-1.7" -a "valid_range,,d,," $ff $out_file
rm $ff
rm -rf $temp_dir_use
