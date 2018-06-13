#!/bin/bash

function ncattget { ncks --trd -M -m ${3} | grep -E -i "^${2} attribute [0-9]+: ${1}" | cut -f 11- -d ' ' | sort ; }

in_dir=$1
out_file=$2

if [ -f $out_file ]; then
	exit 0
fi
touch $out_file

in_files=${in_dir}/*.nc
in_files=( $in_files )
sf=$(ncattget scale_factor streamflow ${in_files[0]}) # need to do this because the calls below blow it away.
for f in ${in_dir}/*.nc; do
  ncks -h --exclude -v nudge,velocity,q_lateral,qBtmVertRunoff,qBucket,qSfcLatRunoff -O $f $f
  ncap2 -h -O -s 'streamflow[$time,$feature_id]=streamflow' $f $f
done
ncrcat -h -O -6 ${in_dir}/*.nc $out_file # > /dev/null 2>&1
ncks -h -O --fix_rec_dmn time $out_file $out_file
ncap2 -h -O -s 'streamflow[$reference_time,$time,$feature_id]=streamflow; time[$reference_time,$time]=time' $out_file $out_file
ncatted -h -O -a "scale_factor,streamflow,o,f,$sf" $out_file $out_file
