#!/usr/bin/env Rscript

args = commandArgs(trailingOnly=TRUE)

# if (length(args) < 1) {
#   stop("must pass in number of threads", call.=FALSE)
# } else if (length(args) == 1) {
#   threads <- args[[1]]
# }

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
source("R/reshape_thredds.R")

bucket <- "https://noaa-nwm-retrospective-2-1-pds.s3.amazonaws.com/"

temp_dir <- "content/data/v2_temp"

in_path <- "nwm_v21/data"

out_path <- "content/data/v21"

concat_path <- "content/data/v2_temp"

concat_script <- "nwm_v21/concat_time.sh"
reshape_script <- "nwm_v2/dap_commands.sh"

if(!dir.exists(temp_dir)) {
  dir.create(temp_dir, showWarnings = FALSE, recursive = TRUE)
}

plan <- drake_plan(keys = get_keys(bucket, ".*CHRTOUT.*", prefix = "model_output", 
                                   override = readRDS("v21keys.rds")),
                   fs = get_nc_file(bucket, keys, threads, temp_dir, in_path, nwm21 = TRUE),
                   ct = concat_v21(keys, concat_path, out_path, concat_script),
                   rs = reshape_thredds(reshape_script))

make(plan)
