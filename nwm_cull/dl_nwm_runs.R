setwd("~/Desktop/")

base <- 'wget -r -np -A "*channel_rt*" http://nwcal-dstore.nwc.nws.noaa.gov/nwm/'
dates <- format(seq(as.Date("2017-05-01"), as.Date("2017-05-31"), by="days"), "%Y%m%d")
 

runs <- c("medium_range", "short_range", 
          "long_range_mem1", "long_range_mem2", 
          "long_range_mem3", "long_range_mem4")

sink("wget_commands.sh")
for(d in dates) {
  for(r in runs) {
    cat(paste0(base, "nwm.", d, "/", r, "/\n"))
  }
}
sink()
