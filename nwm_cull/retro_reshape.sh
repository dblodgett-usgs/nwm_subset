#!/bin/bash

project_root=$1
comid_list=$2
base_path=$3 #"/Volumes/Transfer/datasets/nwm_retro/v12_compressed_files/"
out_path=$4 #"/Users/david.blodgett/Desktop/nwm_retro/"
tmp_path=$5 #"/Volumes/tmpfs/"
latlon_path=$7

for f in ${base_path}*.nc4; do
	ff=${f/$base_path/""}
  out=${out_path}${ff:0:${#ff}-1}
	tmp=${tmp_path}${ff:0:${#ff}-1}
	echo $out
	if [ -f $out.tmp ] || [ -f $out ]; then
		echo $out "is finished"
	else
		touch $out.tmp
	  cp $f $tmp
	  ncks -h -A -v feature_id ${project_root}NWM_v1.2_nc_tools_v1/spatialMetadataFiles/nwm-v1.2-channel_spatial_index.nc $tmp
	  ncks -h -A -v latitude,longitude ${latlon_path}culled_latlon.nc $tmp
		ncpdq -h -O -a feature_id,time $tmp $tmp
		ncks -h -O -u --cnk_plc g3d --cnk_dmn feature_id,1 --fl_fmt=netcdf4 --deflate=1 $tmp $tmp
	  ncpdq -h -O -a time,feature_id $tmp $out
		rm $tmp
	fi
done