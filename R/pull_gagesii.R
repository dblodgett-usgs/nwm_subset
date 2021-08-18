library(sf)
library(dplyr)
library(dataRetrieval)
library(RNetCDF)

sites <- sf::read_sf("linked_sites.gpkg")
gagesii <- sf::read_sf("gagesII.shp")

ref <- dplyr::filter(gagesii, CLASS == "Ref")
i<-1
for(site in ref$STAID) {
  file <- paste0("out/", site, ".rds")
  if(!file.exists(file)) {
    try(
      saveRDS(dataRetrieval::readNWISuv(site, "00060", startDate = "1993-01-01", endDate = "2018-01-01"),
              file = file), silent = FALSE)
    print(paste(site, i))
  }
  i <- i + 1
}

outfiles <- list.files("out/")

out_times <- seq(from = as.POSIXct("1993-01-01 00:00", tz = "UTC"), 
                 to = as.POSIXct("2018-12-31 24:00", tz = "UTC"), by = "hour")

out_data <- data.frame(matrix(numeric(0), 
                              nrow = length(out_times), 
                              ncol = length(outfiles)))
out_meta <- data.frame(matrix(character(0), 
                              nrow = length(out_times), 
                              ncol = length(outfiles)), stringsAsFactors = FALSE)
names(out_data) <- names(out_meta) <- gsub(".rds", "", outfiles)

max_gap <- 6 # hours

i <- 0
for(f in outfiles) {
  dat <- readRDS(file.path("out/", f))
  
  if(nrow(dat) > 0) {
    site <- dat$site_no[1]
    
    out_dat <- approx(dat$dateTime, dat$X_00060_00000, out_times, rule = 1)
    
    out_met <- data.frame(dateTime = out_times, seq = seq(1, length(out_times)))
    out_met_temp <- approx(out_met$dateTime, out_met$seq, dat$dateTime, method = "constant") %>%
      as.data.frame() %>%
      left_join(select(dat, dt = dateTime, cd = X_00060_00000_cd), by = c("x" = "dt")) %>%
      group_by(y) %>%
      filter(row_number() == 1) %>%
      ungroup() %>% select(-x)
    
    out_met <- left_join(out_met, out_met_temp, by = c("seq" = "y")) %>%
      select(-seq)
    
    diff_time <- diff(as.numeric(dat$dateTime))
    too_big_ind <- which(diff_time > max_gap * (60^2))
    too_big_start <- dat$dateTime[too_big_ind]
    too_big_end <- dat$dateTime[too_big_ind + 1]
    
    for(gap in 1:length(too_big_start)) {
      test <- out_dat$x > too_big_start[gap] & out_dat$x < too_big_end[gap]
      out_dat$y[test] <- NA
      out_met$cd[test] <- ""
    }
    
    out_data[site] <- out_dat$y
    out_meta[site] <- out_met$cd
  }
  i<-i+1
  print(paste(i, length(outfiles)))
}

# used "01029200.rds" for checks below.
# test <- filter(dat, dateTime > as.POSIXct("2014-04-12") & dateTime < as.POSIXct("2014-05-01"))
# test_2 <- filter(as.data.frame(out_dat), x > as.POSIXct("2014-04-12") & x < as.POSIXct("2014-05-01"))
# plot(test_2$x, test_2$y, pch = ".", col = "red")
# points(test$dateTime, test$X_00060_00000)
# points(test_2$x, test_2$y, pch = 3, col = "red")


# see screen shot
# check <- filter(dat, dateTime > as.POSIXct("2007-08-13") & dateTime < as.POSIXct("2007-10-19"))
# check2 <- filter(as.data.frame(out_met), dateTime > as.POSIXct("2007-08-13") & dateTime < as.POSIXct("2007-10-19"))

attributes <- data.frame(staid = names(out_data), stringsAsFactors = FALSE) %>%
  left_join(st_set_geometry(ref, NULL), by = c("staid" = "STAID"))

lats <- attributes$LAT_GAGE
lons <- attributes$LNG_GAGE

attributes <- select(attributes, 
                     station_name = STANAME, 
                     da_sqkm = DRAIN_SQKM,
                     hcdn_2009 = HCDN_2009)

attributes$hcdn_2009[is.na(attributes$hcdn_2009)] <- "no"

ncdfgeom::write_timeseries_dsg("ref_nwis.nc", 
                               instance_names = names(out_data), 
                               lats = lats, lons = lons, 
                               times = out_times, 
                               data = out_data, 
                               data_unit = "ft^3/s", 
                               data_prec = "float", 
                               data_metadata = list(name = "Discharge", 
                                                    long_name = "Observed river discharge in CFS"), 
                               overwrite = TRUE)

ncdfgeom::write_timeseries_dsg("ref_nwis.nc", 
                               instance_names = names(out_meta), 
                               lats = lats, 
                               lons = lons,
                               times = out_times, 
                               data = out_meta, 
                               data_unit = "none", 
                               data_prec = "char", 
                               data_metadata = list(name = "quality_flags", 
                                    long_name = "NWIS quality flags"), 
                               add_to_existing = TRUE)

ncdfgeom::write_attribute_data("ref_nwis.nc", attributes, 
                               units = c("none", "km^2", "none"))

comids <- data.frame(staid = names(out_data), stringsAsFactors = FALSE) %>%
  left_join(select(st_set_geometry(sites, NULL), site_id, COMID), 
            by = c("staid" = "site_id")) %>%
  select(-staid) %>%
  mutate(COMID = as.integer(COMID))

ncdfgeom::write_attribute_data("ref_nwis.nc", comids, 
                               units = c("nhdplusv2.1 comid"))

system("nccopy -k nc4 -d 1 -c instance/1,time/,char/,instance_name_char/,quality_flags_char/ ref_nwis.nc ref_nwis_2.nc")
file.rename("ref_nwis_2.nc", "ref_nwis.nc")

saveRDS(out_data, "out_data.rds")
saveRDS(out_meta, "out_meta.rds")
saveRDS(out_times, "out_times.rds")

##### Testing and exploration #####
u_meta <- apply(out_meta, 2, unique)
u_meta <- do.call(c, u_meta)
u_meta <- unique(u_meta)

set <- sample(c(1:2000), size = 1000)

nc_nwis <- open.nc("ref_nwis.nc")
timer <- Sys.time()
test_set <- lapply(set, function(x) 
            var.get.nc(nc_nwis, "Discharge", start = c(1,x), count = c(NA,1)))
Sys.time() - timer
rm(test_set)

nc_nwm <- open.nc("nwm_retro.nc")

nwis_sites <- var.get.nc(nc_nwis, "instance_name")
nwm_ids <- var.get.nc(nc_nwm, "feature_id")
nwm_lookup <- var.get.nc(nc_nwis, "COMID")

nwis_time <- utcal.nc(att.get.nc(nc_nwis, "time", "units"), 
                      var.get.nc(nc_nwis, "time"), "c")
nwm_time <- utcal.nc(att.get.nc(nc_nwm, "time", "units"), 
                     var.get.nc(nc_nwm, "time"), "c")

cms_to_cfs <- 3.28084 ^ 3

site <- "01029200"
site <- "02422500"
site <- "02051500"

nwis_index <- which(nwis_sites == site)

nwm_id <- nwm_lookup[nwis_index]

nwm_index <- which(nwm_ids == nwm_id)

nwm_data <- data.frame(time = nwm_time, 
                       q = var.get.nc(nc_nwm, "streamflow", 
                                      start = c(nwm_index, 1), 
                                      count = c(1, NA), unpack = TRUE))
nwm_data$q <- nwm_data$q * cms_to_cfs
nwis_data <- data.frame(time = nwis_time, 
                        q = var.get.nc(nc_nwis, "Discharge", 
                                       start = c(1, nwis_index), 
                                       count = c(NA, 1), unpack = TRUE))

start <- as.POSIXct("2014-01-01")
end <- as.POSIXct("2014-10-01")

p_nwis <- filter(nwis_data, time > start & time < end)
p_nwm <- filter(nwm_data, time > start & time < end)

plot(p_nwis$time, p_nwis$q)
points(p_nwm$time, p_nwm$q, pch = ".", col = "red")
  