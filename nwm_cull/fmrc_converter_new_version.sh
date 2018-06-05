#!/bin/bash

function ncattget { ncks --trd -M -m ${3} | grep -E -i "^${2} attribute [0-9]+: ${1}" | cut -f 11- -d ' ' | sort ; }

in_spec=$1
out_file=$2
temp_dir=$3
cull_nwm_path=$4
comid_list=$5
latlon_path=$6
file_list=""
filter_list=""
if [ -f $out_file ]; then
	exit 0
fi
touch $out_file
date=$(echo $in_spec | cut -d '_' -f 1)
config=$(echo $in_spec | cut -d '_' -f 2,3,4)
if [[ $config = *"medium_range"* ]]; then
	times="t00z t06z t12z t18z"
elif [[ $config = *"long_range"* ]]; then
	times="t00z t06z t12z t18z"
elif [[ $config = *"short_range"* ]]; then
	times="t00z t01z t02z t03z t04z t05z t06z t07z t08z t09z t10z t11z t12z t13z t14z t15z t16z t17z t18z t19z t20z t21z t22z t23z"
elif [[ $config = *"analysis_assim"* ]]; then
	times="t00z t01z t02z t03z t04z t05z t06z t07z t08z t09z t10z t11z t12z t13z t14z t15z t16z t17z t18z t19z t20z t21z t22z t23z"
else
	echo "invalid mode entered"
	exit 1
fi
for r in $times; do
	echo $in_spec ${r}
  repl_char="/"
  temp_dir_use=${temp_dir}/${in_spec//$repl_char/_}_nwm_${r}
  rm -rf $temp_dir_use
  mkdir $temp_dir_use
  tt=${temp_dir_use}/temp 
  mkdir $tt
  Rscript --vanilla ${cull_nwm_path}dl_ostore.R $date $config channel_rt $r $tt
  for f in ${tt}/*; do
    ncks -h --exclude -v nudge,velocity,q_lateral,qBtmVertRunoff,qBucket,qSfcLatRunoff -O $f $f
    Rscript --vanilla ${cull_nwm_path}cull_catchments.R $f $f ${comid_list}
		ncks  -h -O --cnk_plc g3d --cnk_dmn feature_id,1 $f $f
  done
  ff=${temp_dir_use}/${r}.nc
  ncrcat -h ${tt}/* $ff > /dev/null 2>&1
  rm -r ${tt}
  ncks -h -O --fix_rec_dmn time $ff $ff
  ncks -h -O --mk_rec_dmn reference_time $ff $ff
  sf=$(ncattget scale_factor streamflow $ff)
  ncap2 -h -O -s 'time[$reference_time,$time]=time' $ff $ff
  ncap2 -h -O -s 'streamflow[$reference_time,$time,$feature_id]=streamflow' $ff $ff
  ncatted -h -O -a "scale_factor,streamflow,o,f,$sf" $ff $ff
  file_list="$file_list $ff"
  folder_list="$folder_list $temp_dir_use"
done
ncrcat -h --fl_fmt=netcdf4 $file_list ${temp_dir}/$out_file > /dev/null 2>&1
rm $file_list
ncks -h -A -v latitude,longitude ${latlon_path}culled_latlon.nc ${temp_dir}/$out_file
ncks -h -O --deflate=1 ${temp_dir}/$out_file ${temp_dir}/$out_file
ncatted -h -O -a "title,global,a,c,NWM Forcast Model Run Collection" -a "axis,time,a,c,T" -a "coordinates,streamflow,m,c,longitude latitude time reference_time" ${temp_dir}/$out_file ${temp_dir}/$out_file
ncatted -h -O -a "model_initialization_time,global,d,," -a "model_output_valid_time,global,d,," -a "stream_order_output,global,d,," -a "model_version,global,d,," -a "dev_OVRTSWCRT,global,d,," -a "dev_NOAH_TIMESTEP,global,d,," -a "dev_channel_only,global,d,," -a "dev_channelBucket_only,global,d,," -a "dev,global,d,," -a "cdm_datatype,global,d,," -a "station_dimension,global,d,," -a "Conventions,global,m,c,CF-1.7" -a "valid_range,,d,," ${temp_dir}/$out_file $out_file
rm ${temp_dir}/$out_file
rm -rf $folder_list
