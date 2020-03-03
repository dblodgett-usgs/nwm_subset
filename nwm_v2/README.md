## NWM V2 Processing Steps  

1) Download all .comp files from Amazon S3.  
See runner.R step get\_keys() which calls functions in R/get\_data.R. Was run on yeti USGS shared HPC.

2) Select only streamflow from .comp files.  
See runner.R step get\_nc\_files() which calls functions in R/get\_data.R. Was run on yeti USGS shared HPC.

e.g. `ncks -O -4 -L 1 --cnk_plc=all --cnk_map=dmn -C -v streamflow data/full_physics/1993/199301010000.CHRTOUT_DOMAIN1.comp data/full_physics/1993/199301010000.CHRTOUT_DOMAIN1.comp`

3) Add time dimension and time variable to .comp files.  
See runner.R step add\_time() which calls functions in R/add\_time.R. Was run on yeti USGS shared HPC.

e.g. `ncap2 -O --cnk_plc uck -s defdim(\"time\",1);time[time]=201624;streamflow[time,feature_id]=streamflow;time@units=\"Hours since 1970-01-01 00:00:00 UTC\" full_physics/1993/199301010000.CHRTOUT_DOMAIN1.comp content/data/full_v2/with_time//199301010000.CHRTOUT_DOMAIN1.comp`

4) Combine .comp files together with ncrcat. ( ... represents many many files)  
See runner.R step concat() which calls functions in R/concat.R. Was run on yeti USGS shared HPC.

e.g. `ncrcat content/data/full_v2/with_time//199301010000.CHRTOUT_DOMAIN1.comp content/data/full_v2/with_time//199301010100.CHRTOUT_DOMAIN1.comp content/data/full_v2/with_time//199301010200.CHRTOUT_DOMAIN1.comp ...
content/data/full_v2//199301.nc`

5) Compress monthly files for transport.  
Executed directly with simple bash looping on Yeti.

e.g. `ncks -4 -L 3 -O 199301.nc 199301.nc`  

6) Rechunk files to prep for pivot.  
Executed directly with simple bash looping on local Ubuntu OS.

ncks --cnk_plc=g2d --cnk_dmn feature_id,10000 --cnk_dmn time,1024 --deflate 0 --fix_rec_dmn  199301.nc /mnt/md1/199301.nc

7) Add feature ids  
Executed directly with simple bash looping on local Ubuntu OS.  

e.g. `ncks -A /mnt/md0/content/data/feature_id.nc /mnt/md0/content/data/full_v2/201811.nc`

8) join with ncml  
e.g.  
```
<?xml version="1.0" encoding="UTF-8"?>
<netcdf xmlns="http://www.unidata.ucar.edu/namespaces/netcdf/ncml-2.2">
  <aggregation dimName="time" type="joinExisting">
      <scan location="./content/data/full_v2/" suffix=".nc" subdirs="false" />
  </aggregation>
</netcdf>
```

9) pivot with nccopy and thredds
See runner.R step reshape\_thredds() which calls functions in R/reshape\_thredds.R.

e.g. `nccopy -k nc7 -d 1 -m 250M -c 'feature_id/1,time/20000' "http://localhost:8080/thredds/dodsC/md0/join.ncml?feature_id[0:1:9999],latitude[0:1:9999],longitude[0:1:9999],streamflow[0:1:227903][0:1:9999],time[0:1:227903]" nwm_retro_v2_001.nc`

10) reshape to enable join
See bin/pdq\_retro.sh. Was run directly with simple bash looping on local Ubuntu OS.

11) Subset to NWIS only with subset\_catchments\_dap.R