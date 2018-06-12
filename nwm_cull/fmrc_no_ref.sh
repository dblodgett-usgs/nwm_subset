#!/bin/bash

function ncattget { ncks --trd -M -m ${3} | grep -E -i "^${2} attribute [0-9]+: ${1}" | cut -f 11- -d ' ' | sort ; }

in_dir=$1
out_file=$2
temp_dir=$3

if [ -f $out_file ]; then
	exit 0
fi
touch $out_file

ff=${temp_dir}/$out_file
in_files=${in_dir}/*.nc
in_files=( $in_files )
sf=$(ncattget scale_factor streamflow ${in_files[0]}) # need to do this because the calls below blow it away.
for f in ${in_dir}/*.nc; do
  ncks -h --exclude -v nudge,velocity,q_lateral,qBtmVertRunoff,qBucket,qSfcLatRunoff -O $f $f
  ncap2 -h -O -s 'streamflow[$time,$feature_id]=streamflow' $f $f
  ncatted -h -O -a "scale_factor,streamflow,o,f,$sf" $f $f
done
ncrcat -h ${in_dir}/*.nc $ff # > /dev/null 2>&1
nccopy -k nc3 $ff $out_file
rm $ff
