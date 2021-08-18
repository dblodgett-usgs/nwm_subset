times <- list(
  medium_range=c("t00z", "t06z", "t12z", "t18z"),
  short_range=c("t00z", "t01z", "t02z", "t03z", "t04z", 
                "t05z", "t06z", "t07z", "t08z", "t09z", 
                "t10z", "t11z", "t12z", "t13z", "t14z", 
                "t15z", "t16z", "t17z", "t18z", "t19z", 
                "t20z", "t21z", "t22z", "t23z"),
  analysis_assim=c("t00z", "t01z", "t02z", "t03z", "t04z", 
                   "t05z", "t06z", "t07z", "t08z", "t09z", 
                   "t10z", "t11z", "t12z", "t13z", "t14z", 
                   "t15z", "t16z", "t17z", "t18z", "t19z", 
                   "t20z", "t21z", "t22z", "t23z")
)

tempdir <- "proc"

demo_day <- "nwm.20180618"

sink("../../3_thredds/data/realtime_testing/real_time_test_commands.sh")
cat("#!/bin/bash \n")
# cat('wget -r -np -nH --cut-dirs=6 -q -A "*medium_range.channel_rt*" -P ./ http://nomads.ncep.noaa.gov/pub/data/nccf/com/nwm/prod/ \n')
# cat('wget -r -np -nH --cut-dirs=6 -q -A "*short_range.channel_rt*" -P ./ http://nomads.ncep.noaa.gov/pub/data/nccf/com/nwm/prod/ \n')
# cat('wget -r -np -nH --cut-dirs=6 -q -A "*analysis_assim.channel_rt*" -P ./ http://nomads.ncep.noaa.gov/pub/data/nccf/com/nwm/prod/ \n')
for(config in names(times)) {
  for(run in times[[config]]) {
    cat(paste0("rm -rf ", tempdir, "/* \n"))
    cat(paste0("cp ", demo_day, "/", config, "/*", run, "* ", tempdir, "/", " \n"))
    cat(paste0("bash fmrc_real_time.sh ", tempdir, " ", config, "/", run, ".nc", " \n"))
  }
}
sink()