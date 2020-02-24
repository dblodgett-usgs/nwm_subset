NWM V2 Processing Steps
1) Download all .comp files from Amazon S3.
2) Select only streamflow from .comp files.
ncks -O -4 -L 1 --cnk_plc=all --cnk_map=dmn -C -v streamflow data/full_physics/1993/199301010000.CHRTOUT_DOMAIN1.comp data/full_physics/1993/199301010000.CHRTOUT_DOMAIN1.comp

3) Add time dimension and time variable to .comp files.
ncap2 -O --cnk_plc uck -s defdim(\"time\",1);time[time]=201624;streamflow[time,feature_id]=streamflow;time@units=\"Hours since 1970-01-01 00:00:00 UTC\" full_physics/1993/199301010000.CHRTOUT_DOMAIN1.comp content/data/full_v2/with_time//199301010000.CHRTOUT_DOMAIN1.comp

4) Combine .comp files together with ncrcat. ( ... represents many many files)
ncrcat content/data/full_v2/with_time//199301010000.CHRTOUT_DOMAIN1.comp content/data/full_v2/with_time//199301010100.CHRTOUT_DOMAIN1.comp content/data/full_v2/with_time//199301010200.CHRTOUT_DOMAIN1.comp ...
content/data/full_v2//199301.nc

5) Compress monthly files for transport.
ncks -4 -L 3 -O 199301.nc 199301.nc

6) Rechunk files to prep for pivot
ncks --cnk_plc=g2d --cnk_dmn feature_id,10000 --cnk_dmn time,1024 --deflate 0 --fix_rec_dmn  199301.nc /mnt/md1/199301.nc

7) Add feature ids

8) join with ncml

9) pivot with nccopy and thredds

10) reshape to enable join
pdq_retro.sh