library(dplyr)
library(sf)
library(nhdplusTools)

setwd("~/Documents/Projects/NWM/2_code/nwm_output/R/nexus_locations")
flowlines <- readRDS("../../nhdplus_refactor/nhdplus_flowlines.rds")

nhdplus_path <- "../../../1_data/NHDPlusV21_National_Seamless.gdb/"
nhdplus_layers <- sf::st_layers(nhdplus_path)

nhdplus_layers$name
nhdArea <- sf::st_read(nhdplus_path, "NHDArea")
nhdWater <- sf::st_read(nhdplus_path, "NHDWaterbody")

