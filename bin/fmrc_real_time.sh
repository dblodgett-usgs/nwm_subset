#!/bin/bash

# This function requires an up to date nco -- will fail with old versions.
function ncattget { ncks --trd -M -m ${3} | grep -E -i "^${2} attribute [0-9]+: ${1}" | cut -f 11- -d ' ' | sort ; }

in_dir=$1 # this folder should contain one model run of NWM output for one configuration.
out_file=$2 # pick your poison

# This is clunky, but we need to grab the scale_factor to reinject it later as the ncap2 calls remove it.
in_files=${in_dir}/*.nc
in_files=( $in_files )
sf=$(ncattget scale_factor streamflow ${in_files[0]})

# First remove unwanted variables and add a time dimension to the streamflow variable.
for f in ${in_dir}/*.nc; do
  ncks -h --exclude -v nudge,velocity,q_lateral,qBtmVertRunoff,qBucket,qSfcLatRunoff -O $f $f
  ncap2 -h -O -s 'streamflow[$time,$feature_id]=streamflow' $f $f
done

# concatenate the file set together along the time record dimension.
# Also convert to NetCDF3 64 bit offset to get rid of problematic chunking.
ncrcat -h -O -6 ${in_dir}/*.nc $out_file # > /dev/null 2>&1 # This line will message to the console. 

# Fix the time dimension so it is no long a "record" dimension
ncks -h -O --fix_rec_dmn time $out_file $out_file

# Add a reference_time dimension to time and streamflow so we can aggregate along reference_time later.
ncap2 -h -O -s 'streamflow[$reference_time,$time,$feature_id]=streamflow; time[$reference_time,$time]=time' $out_file $out_file

# Add back the scale_factor!!
ncatted -h -O -a "scale_factor,streamflow,o,f,$sf" $out_file $out_file
