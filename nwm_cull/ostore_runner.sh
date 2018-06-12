#!/bin/bash

date=$1
config=$2
run=$3
temp_dir=$4
out_file=$5
script_path=$6

temp_dir_temp=${temp_dir}_temp

mkdir $temp_dir_temp

Rscript --vanilla ${script_path}dl_ostore.R $date $config channel_rt $run $temp_dir_temp

Rscript --vanilla ${script_path}date_namer.R $temp_dir_temp $date

bash ${script_path}fmrc_no_ref.sh $temp_dir_temp $out_file $temp_dir

rm -r $temp_dir_temp