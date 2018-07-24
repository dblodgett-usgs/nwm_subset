#!/bin/bash

ncks_version=$(ncks --version 2>&1 | grep ncks | grep -o [0-9].[0-9].[0-9])
ncks_version=${ncks_version: -3}
check_version="${ncks_version} > 6.8"

if [ $(echo $check_version | bc) -eq 1 ]; then
  function ncattget { ncks --trd -M -m ${3} | grep -E -i "^${2} attribute [0-9]+: ${1}" | cut -f 11- -d ' ' | sort ; }
else
  function ncattget { ncks -M -m ${3} | grep -E -i "^${2} attribute [0-9]+: ${1}" | cut -f 11- -d ' ' | sort ; }
fi

in_dir=$1 # this folder should contain one model run of NWM output for one configuration.
out_file_noref=$2 # pick your poison
out_file_ref=$3
lat_lon_file=$4 # path to latitude longitudes for the data

# This is clunky, but we need to grab the scale_factor to reinject it later as the ncap2 doesn't handle it well
in_files=${in_dir}/*.nc
in_files=( $in_files )
sf=$(ncattget scale_factor streamflow ${in_files[0]})

# First remove unwanted variables and add a time dimension to the streamflow variable.
for f in ${in_dir}/*.nc; do
  ncks -h --exclude -v nudge,velocity,q_lateral,qBtmVertRunoff,qBucket,qSfcLatRunoff -O $f $f
  ncatted -h -O -a "scale_factor,streamflow,d,," -a "add_offset,streamflow,d,," $f $f
  ncap2 -h -O -s 'streamflow[$time,$feature_id]=streamflow' $f $f
done

# concatenate the file set together along the time record dimension.
# Also convert to NetCDF3 64 bit offset to get rid of problematic chunking.
ncrcat -h -O -6 ${in_dir}/*.nc $out_file_noref # > /dev/null 2>&1 # This line will message to the console. 

# Fix the time dimension so it is no long a "record" dimension
ncks -h -O --fix_rec_dmn time $out_file_noref $out_file_noref

cp $out_file_noref $out_file_ref

# Reorder dimensions to get the output to work with THREDDS as a station datatype
ncpdq -h -O -a feature_id,time $out_file_noref $out_file_noref

# Add back the scale_factor and update coordinates to work with THREDDS as a station datatype
ncatted -h -O -a "scale_factor,streamflow,o,f,$sf" -a "coordinates,streamflow,m,c,time longitude latitude" $out_file_noref $out_file_noref

# Add the lat_lon coordinates
ncks -h -A $lat_lon_file $out_file_noref

# Add a reference_time dimension to time and streamflow so we can aggregate along reference_time later.
ncap2 -h -O -s 'streamflow[$reference_time,$time,$feature_id]=streamflow; time[$reference_time,$time]=time' $out_file_ref $out_file_ref

# Add back the scale_factor!!
ncatted -h -O -a "scale_factor,streamflow,o,f,$sf" $out_file_ref $out_file_ref

