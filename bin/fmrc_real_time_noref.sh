#!/bin/bash

source ncattget.sh

in_dir=$1 # this folder should contain one model run of NWM output for one configuration.
out_file=$2 # pick your poison
lat_lon_file=$3 # path to latitude longitudes for the data

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
ncrcat -h -O -6 ${in_dir}/*.nc $out_file # > /dev/null 2>&1 # This line will message to the console. 

# Fix the time dimension so it is no long a "record" dimension
ncks -h -O --fix_rec_dmn time $out_file $out_file

# Reorder dimensions to get the output to work with THREDDS as a station datatype
ncpdq -h -O -a feature_id,time $out_file $out_file

# Add the lat_lon coordinates
ncks -h -A $lat_lon_file $out_file

# Add back the scale_factor and update coordinates to work with THREDDS as a station datatype
ncatted -h -O -a "scale_factor,streamflow,o,f,$sf" -a "coordinates,streamflow,m,c,time longitude latitude" $out_file $out_file
