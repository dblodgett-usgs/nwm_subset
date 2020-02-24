#!/bin/bash
f=$1

ncks -h -C -x -v streamflow,time $f ${f}.temp
ncks -h -O -C -x -v latitude,longitude,feature_id $f $f
ncpdq -h -O -a feature_id,time $f $f
ncks -h -O --cnk_dmn feature_id,10000 ${f}.temp ${f}.temp
ncks -h -A -v latitude,longitude,feature_id ${f}.temp $f
rm ${f}.temp