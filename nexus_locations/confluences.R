library(dplyr)
library(sf)
library(nhdplusTools)

flowlines <- readRDS("../../nhdplus_refactor/nhdplus_flowlines.rds")

flines <- prepare_nhdplus(flowlines, 0, 0, purge_non_dendritic = FALSE)

flines[["ds_num_us"]] <- nhdplusTools:::get_ds_num_upstream(flines)

confluence_comids <- filter(flines, ds_num_us>1)$COMID

gt_order_comids <- filter(flowlines, StreamOrde > 5)$COMID

major_confluences <- gt_order_comids[gt_order_comids %in% confluence_comids]

outlet_comids <- select(flowlines, COMID, Hydroseq, LevelPathI, StreamOrde) %>%
  group_by(LevelPathI) %>%
  filter(Hydroseq == min(Hydroseq)) %>% ungroup() %>%
  filter(StreamOrde < 6 & StreamOrde > 1)

huc_outlets <- readRDS("../../../1_data/fpp_within_nhdplus.rds")

length(which(huc_outlets$COMID %in% major_confluences))

tester <- left_join(huc_outlets, select(flines, COMID, ds_num_us))
length(which(is.na(tester$ds_num_us)))
length(which(tester$ds_num_us == 1))
length(which(tester$ds_num_us == 2))
length(which(tester$ds_num_us == 3))
length(which(tester$ds_num_us == 4))
rm(tester)

confluence_comids <- data.frame(COMID=c(major_confluences, huc_outlets$COMID, outlet_comids$COMID)) %>%
  distinct() %>%
  left_join(sf::st_set_geometry(huc_outlets, NULL)) 

saveRDS(confluence_comids, "confluence_comids.rds")

map_output <- select(flowlines, COMID) %>% 
  left_join(data.frame(COMID=confluence_comids$COMID, output = 1)) %>%
  mutate(output = ifelse(is.na(output), 2, output))
  
write.table(map_output, "map_joiner.tsv", sep = "\t")
