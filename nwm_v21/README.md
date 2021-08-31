# Notes NWM V2.1 Streamflow

See `download.R` for how content was downloaded.

Two commands were run on all files.

First, the streamflow and time variables were pulled out.
```
f=$(find . -type f -size +3M)
for n in $f; do ncks -O -4 -L 1 --cnk_plc=all --cnk_map=dmn -C -v streamflow,time $n $n; done
```

Second, a time dimension was added to all files.

```
for f in *; do ncap2 -O -4 -L 1 --cnk_plc=all --cnk_map=dmn -s 'streamflow[time,feature_id]=streamflow' $f $f; done
```

Third, files were concatenated by month. eg:

```
ncrcat content/data/v2_temp/197902* content/data/v21/197902.nc
```

Fourth, a file containing feature_id, latitude, longitude, and the crs were extracted from one source file.

```
ncks -3 -v feature_id,latitude,longitude,crs 197902010100.CHRTOUT_DOMAIN1.comp feature_id.nc
```

Fifth, aggregate files with THREDDS using the following ncml.

```
<?xml version="1.0" encoding="UTF-8"?>
<netcdf xmlns="http://www.unidata.ucar.edu/namespaces/netcdf/ncml-2.2">
    <aggregation dimName="feature_id" type="joinExisting">
        <scan location="./v21/" suffix=".nc" subdirs="false" />
    </aggregation>
</netcdf>
```

Sixth, pull from THREDDS with nccopy to get data in pivoted form. nccopy commands look like:

```
nccopy -k nc7 -d 1 -m 250M -c feature_id/1,time/20000 'http://localhost:8080/thredds/dodsC/data/nwmv21/content/data/nwm_v21_retro_full.ncml?feature_id[0:1:9999],latitude[0:1:9999],longitude[0:1:9999],streamflow[0:1:367396][0:1:9999],time[0:1:367396],crs' nwm_retro_v2_001.nc
```

Seventh, pivot files with ncpdq so it can be aggregated by feature_id. ncpdq calls like:

```
ncpdq -O -a feature_id,time nwm_retro_v2_001.nc nwm_retro_v2_001.nc
```

Eighth, aggregate files with THREDDS using the following ncml.

```
<?xml version="1.0" encoding="UTF-8"?>
<netcdf xmlns="http://www.unidata.ucar.edu/namespaces/netcdf/ncml-2.2">
    <aggregation dimName="feature_id" type="joinExisting">
            <scan location="./v21_reshape/" suffix=".nc" subdirs="false" />
    </aggregation>
</netcdf>
```

Ninth, subset to NWIS locations with `subset_catchments_dap.R` in the `R` folder of this repository.
