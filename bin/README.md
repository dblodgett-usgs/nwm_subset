All files in this directory are meant to be executable in the context of a bash script.

- subset\_catchments.R
Script to subset NWM feature\_id data to a given set of catchment identifiers.

- fmrc\_converter.sh
Script to subset `feature_id`s and convert a full day of NWM output into one NetCDF file.

- fmrc_real_time.sh
Script to convert one NWM model run into one output file. Options for suitability with THREDDS / ncSOS (no reference time dimension on streamflow) or suitability with THREDDS joinExisting aggregation (include reference time dimension on streamflow)

- run\_realtime.R
Script to get data and run fmrc\_real\_time.

- dl\_ostore.R
Script to download NWM object store data. Only applicable with access to National Water Center object store. 