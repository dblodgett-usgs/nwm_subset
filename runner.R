#!/usr/bin/env Rscript

args = commandArgs(trailingOnly=TRUE)

if (length(args) < 1) {
  stop("must pass in number of threads", call.=FALSE)
} else if (length(args) == 1) {
  threads <- args[[1]]
}

threads <- 1

packages <- c("xml2", "httr", "parallel", "snow", "pbapply", "ncdf4", "drake")
miss <- packages[!packages %in% installed.packages()[, 1]]
if(length(miss) > 0) install.packages(miss)

library(xml2)
library(httr)
library(parallel)
library(snow)
library(pbapply)
library(ncdf4)
library(drake)

source("R/get_data.R")
source("R/add_time.R")
source("R/concat.R")

bucket <- "http://noaa-nwm-retro-v2.0-pds.s3.amazonaws.com/"

temp_dir <- "content/data/temp"

in_path <- "content/data/full_v2/full_physics/"

out_path <- "content/data/full_v2/with_time/"

concat_path <- "content/data/full_v2/"

out_script <- "nwm_v2/add_time.sh"
concat_script <- "nwm_v2/concat_time.sh"

if(!dir.exists(temp_dir)) {
  dir.create(temp_dir, showWarnings = FALSE, recursive = TRUE)
}

print(paste("working in", temp_dir))

plan <- drake_plan(keys = get_keys(bucket, ".*CHRTOUT.*"),
                   # fs = get_nc_file(bucket, keys, threads, temp_dir, "content/data/full_v2/", 1993),
                   wt = add_time(keys, in_path, out_path, out_script),
                   ct = concat(keys, out_path, concat_path, concat_script))

cache <- new_cache("./.drake")
make(plan, cache = cache)
