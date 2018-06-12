#!/bin/bash

project_root=$1
base_path=$2 #"/Volumes/Transfer/datasets/nwm_retro/v12_compressed_files/"
out_path=$3 #"/Users/david.blodgett/Desktop/nwm_retro/"
tmp_path=$4 #"/Volumes/tmpfs/"

for f in ${base_path}*.nc4; do
	ff=${f/$base_path/""}
  out=${out_path}${ff:0:${#ff}-1}
	tmp=${tmp_path}${ff:0:${#ff}-1}
	echo $out
	if [ -f $out.tmp ] || [ -f $out ]; then
		echo $out "is finished"
	else
		touch $out.tmp
	  ncks -h -O --cnk_plc=g3d --cnk_dmn=feature_id,1 --fl_fmt=netcdf4 --deflate=1 $f $tmp
		ncks -h -A -v feature_id,latitude,longitude ${project_root}NWM_v1.2_nc_tools_v1/spatialMetadataFiles/nwm-v1.2-channel_spatial_index_rechunk.nc $tmp
		mv $tmp $out
	fi
done