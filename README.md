# NWM Output Rewrite Tools

This is a collection of scripts used to cull un-needed content and rewrite NWM output for read access.

### Overview

#### bin/
*This repository includes scripts to convert NWM output into three different configurations.*

1) A NetCDF-Java compatible timeseries feature type with one model run per file. This is useful for creating THREDDS NetCDF-Subset services for the latest available model run.
2) A single model run per file that can be aggregated by `reference_time`. This is useful for creating real-time aggregated data services that update everytime the model runs.
3) A full day of model runs per file with a subset of `feature_id`s that can be aggregated by `reference_time`. This is useful for creating large collections of model runs at specific model locations, such as stream gages.

#### nwm-docker\_*
*Two docker containers are also included.*

1) `nwm-docker_process` runs a script to maintain a latest-run and latest day set of NWM outputs in format 1 and 2 above.
2) `nwm-docker_thredds` runs a THREDDS server to expose the results of `nwm-docker_process` via a set of web services.

#### content/
*THREDDS configuration directory for use with Docker*

The docker containers mount this directory. Symlink a directory called `data` here to be used as a storage location for THREDDS data.

#### R/
*A number of R scripts are included* 

These scripts are useful untilities used in the process of developing other aspects of this repository. See the `R` folder contents for more.

#### NWM\_v1.2\_nc\_tools\_v1
*As a convenience, tools also available here: http://water.noaa.gov/about/nwm have been included*

## Disclaimer

This information is preliminary or provisional and is subject to revision. It is being provided to meet the need for timely best science. The information has not received final approval by the U.S. Geological Survey (USGS) and is provided on the condition that neither the USGS nor the U.S. Government shall be held liable for any damages resulting from the authorized or unauthorized use of the information.

This software is in the public domain because it contains materials that originally came from the U.S. Geological Survey  (USGS), an agency of the United States Department of Interior. For more information, see the official USGS copyright policy at [https://www.usgs.gov/visual-id/credit_usgs.html#copyright](https://www.usgs.gov/visual-id/credit_usgs.html#copyright)

Although this software program has been used by the USGS, no warranty, expressed or implied, is made by the USGS or the U.S. Government as to the accuracy and functioning of the program and related program material nor shall the fact of distribution constitute any such warranty, and no responsibility is assumed by the USGS in connection therewith.

This software is provided "AS IS."

 [
    ![CC0](https://i.creativecommons.org/p/zero/1.0/88x31.png)
  ](https://creativecommons.org/publicdomain/zero/1.0/)