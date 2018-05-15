#-------------------------------------------------------------------------------

#// *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
#// ** Copyright UCAR (c) 1992 - 2016
#// ** University Corporation for Atmospheric Research(UCAR)
#// ** National Center for Atmospheric Research(NCAR)
#// ** Research Applications Laboratory(RAL)
#// ** P.O.Box 3000, Boulder, Colorado, 80307-3000, USA
#// ** 2016/03/24 00:00:00
#// *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*

# Author:       Kevin Sampson (WRF-Hydro tools contact)
#               Associate Scientist
#               National Center for Atmospheric Research
#               Boulder, Colorado, USA
#               ksampson@ucar.edu
#
# Modified by:  Fernando Salas (National Water Model contact)
#               Associate Scientist
#               University Corporation for Atmospheric Research
#               NOAA/NWS National Water Center
#               Tuscaloosa, Alabama, USA
#               fernando.salas@noaa.gov

#-------------------------------------------------------------------------------

__version__ = 'NWM_v1.2_nc_tools_v1'

# Import python core modules
import sys
import os
import time
import getopt
import glob
import shutil
import re

# Import additional modules
import osr                                                                      # Only necessary for converting Esri PE -> Proj4
import netCDF4

# Module configurations
tic = time.time()
sys.dont_write_bytecode = True

# Screen print in case invalid parameters are given
use = '''
This is the NWM spatial-metadata appender tool from {}.

    Use this utility to append spatial metadata to NWM output files.

    Usage: %s <Spatial Metadata File> <Input Directory> <NWM Output Type> <Output Directory>
          <Spatial Metadata File>  ->  MEtadata template file for specified file type
          <Input Directory>        ->  Directory containing NWM output
          <NWM File Type>          ->  One of [land, terrain_rt, channel_rt, reservoir, fe]
          <Output Directory>       ->  Directory to store georeferenced NWM output
'''.format( __version__ )

# ---------- Globals ---------- #
suffix = '_georeferenced.nc'                                                    # Define suffix for new filenames
outNCType = 'NETCDF4'                                                           # Data model for output netCDF data
fillValue = float(-1.0e+33)                                                     # Fill value for missing values (not currently honored)
# -------- End Globals -------- #

# Find some CF point and grid conventions here:
# http://cfconventions.org/Data/cf-conventions/cf-conventions-1.7/build/cf-conventions.html#idp9763584

# --------- Functions --------- #
def Gather_Input_Files(in_dir, in_type):
    '''Gather a list of all files matching the WRF-Hydro output type.'''

    wildcard = os.path.join(in_dir, '*.%s*' %in_type)
    files_list = glob.glob(wildcard)
    return files_list

def test_metadata_input(in_nc, in_type, test_nc):
    '''Function for testing consistency between WRF-Hydro output type given and
    the spatial metadata file provided. Dimension names and lengths are used as
    comparison to ensure the correct domain is used by matching dimension sizes.'''

    # Initiate test results
    test_results = False                                                        # Assume an inconsistency
    geogrid = False                                                             # Assume input is not a GEOGRID file
    gis_file = False                                                            # Assume input was not from WRF-Hydro GIS Pre-processor

    # Open Dataset objects on input spatial metadata file and WRF output file
    rootgrp = netCDF4.Dataset(in_nc, 'r')                                       # Open spatial metadata file for reading
    rootgrp2 = netCDF4.Dataset(test_nc, 'r')                                    # Open a WRF-Hydro output file for reading

    # Start comparing dimension sizes
    if in_type == 'land':
        metadata_dims = ['x', 'y']
        wrf_dims = ['west_east', 'south_north']                                 # ['x', 'y']
        metadata_xdim = len(rootgrp.dimensions[metadata_dims[0]])
        metadata_ydim = len(rootgrp.dimensions[metadata_dims[1]])
        wrf_xdim = len(rootgrp2.dimensions[wrf_dims[0]])
        wrf_ydim = len(rootgrp2.dimensions[wrf_dims[1]])
        if sum([metadata_xdim==wrf_xdim, metadata_ydim==wrf_ydim]) == 2:
            test_results = True

        # Check to see if this is a GEOGRID file
        if 'TITLE' in rootgrp.__dict__:
            titleStr = rootgrp.__dict__['TITLE']
            if re.match(re.compile('OUTPUT FROM GEOGRID*'), titleStr):
                print 'Input spatial metadata file found to be GEOGRID file for LDASOUT files.'
                geogrid = True

        # Check to see if this was created by the WRF-Hydro GIS pre-processor
        if 'Source_Software' in rootgrp.__dict__:
            titleStr = rootgrp.__dict__['Source_Software']
            if re.match(re.compile('WRF-Hydro GIS*'), titleStr):
                print 'Input spatial metadata file found to be WRF-Hydro GIS Pre-processor file.'
                gis_file = True

    elif in_type == 'terrain_rt':
        metadata_dims = ['x', 'y']
        wrf_dims = ['x', 'y']
        metadata_xdim = len(rootgrp.dimensions[metadata_dims[0]])
        metadata_ydim = len(rootgrp.dimensions[metadata_dims[1]])
        wrf_xdim = len(rootgrp2.dimensions[wrf_dims[0]])
        wrf_ydim = len(rootgrp2.dimensions[wrf_dims[1]])
        if sum([metadata_xdim==wrf_xdim, metadata_ydim==wrf_ydim]) == 2:
            test_results = True

        if 'Source_Software' in rootgrp.__dict__:
            titleStr = rootgrp.__dict__['Source_Software']
            if re.match(re.compile('WRF-Hydro GIS*'), titleStr):
                print 'Input spatial metadata file found to be WRF-Hydro GIS Pre-processor file.'
                gis_file = True

    elif in_type == 'channel_rt' or in_type == 'reservoir':
        metadata_dims = ['feature_id']                                             # For non LAKEPARM.nc spatial metadata files
        wrf_dims = ['feature_id']

        if 'Source_Software' in rootgrp.__dict__:
            titleStr = rootgrp.__dict__['Source_Software']
            if re.match(re.compile('WRF-Hydro GIS*'), titleStr):
                print 'Input spatial metadata file found to be WRF-Hydro GIS Pre-processor file.'
                gis_file = True
                if in_type == 'channel_rt':
                    metadata_dims = ['linkDim']                                 # For RouteLink.nc spatial metadata files
                elif in_type == 'reservoir':
                    metadata_dims = ['nlakes']                                  # For LAKEPARM.nc spatial metadata files

        metadata_dim = len(rootgrp.dimensions[metadata_dims[0]])
        wrf_dim = len(rootgrp2.dimensions[wrf_dims[0]])
        if metadata_dim==wrf_dim:
            test_results = True

    # Pass test for forcing files    
    elif in_type == 'fe':
        test_results = True
        gis_file = True
    
    else:
        print 'Could not recognize the WRF-Hydro output type given (%s)' %in_type
        test_results = False

    if test_results == True:
        print 'Spatial metadata file dimensions match WRF-Hydro (%s) output dimensions.' %in_type
    else:
        print 'One of the checks between the files resulted in a mismatch.'

    rootgrp.close()
    rootgrp2.close()
    return test_results, geogrid, gis_file

def main(in_nc, directory, filetype, output_dir, filesList, isGEOGRID=False, isGIS=False):
    '''This method will read each input file and write a new netCDF (NETCDF4_CLASSIC)
    file to the output directory. This can save substantial amounts of time because
    writing NETCDF4_CLASSIC variable attributes is very much faster using this method
    than trying to edit or write to a NETCDF3 file.'''

    tic1 = time.time()

    print "Starting __main__ function"

    # Open spatial metadata file for reading
    geo_nc = netCDF4.Dataset(in_nc, 'r')

    # Set some defaults
    mapDims = {}
    fillValue = True                                                           # Fill value for missing values
    excludeVars = []                                                            # Variables to exclude when adding attributes from adVarAtts list
    addVarAtts = {}                                                             # These variable attributes will be added to each data variable in output
    excludeVarAtts = []                                                          # List of variable attributes to remove
    addGlobalAtts = ['Conventions']                                             # Global attributes to move into the new files

    # Handle dimensions by WRF-Hydro output file type
    if filetype == 'land':
        mapDims = {'west_east': u'x', 'south_north': u'y'}                      # Dictionary to map old dimensions to new dimensions
        addVars = [u'x', u'y']                                                  # These variables will be added to the output from the spatial metadata file
        excludeVars = [u'time']                                                 # Variables to exclude when adding attributes from adVarAtts list
        fillValue = -1.0e+33                                                    # Fill value for missing values

    elif filetype == 'terrain_rt':
        # No need to map or add dimensions to this type of file
        excludeVarAtts = [u'coordinates']                                       # Remove this variable attribute as it will be unnecessary
        addVars = [u'x', u'y']                                                  # These variables will be added to the output from the spatial metadata file
        excludeVars = [u'time']                                                 # Variables to exclude when adding attributes from adVarAtts list
        fillValue = -8.9999998e+15
        
    elif filetype == 'channel_rt':
        # No need to map or add dimensions to this type of file
        addVars = [u'latitude', u'longitude']                                   # These variables will be added to the output from the spatial metadata file
        addVarAtts = {u'coordinates': 'latitude longitude'}                     # These variable attributes will be added to each data variable in output
        excludeVars = [u'time', u'feature_id']                                  # Variables to exclude when adding attributes from adVarAtts list
        addGlobalAtts += [u'esri_pe_string', u'proj4', u'featureType']          # Global attributes to move into the new files

    elif filetype == 'reservoir':
        # No need to map or add dimensions to this type of file
        addVars = [u'latitude', u'longitude']                                   # These variables will be added to the output from the spatial metadata file
        addVarAtts = {u'coordinates': 'latitude longitude'}                     # These variable attributes will be added to each data variable in output
        excludeVars = [u'time', 'lake_id']                                      # Variables to exclude when adding attributes from adVarAtts list
        addGlobalAtts += [u'esri_pe_string', u'proj4', u'featureType']          # Global attributes to move into the new files

    elif filetype == 'fe':
        # Raw forcing files use several dimensions       
        mapDims = {'ncl0': u'y', 'ncl1': u'x', 'ncl2': u'y', 'ncl3': u'x',
                   'ncl4': u'y', 'ncl5': u'x', 'ncl6': u'y', 'ncl7': u'x',
                   'ncl8': u'y', 'ncl9': u'x', 'ncl10': u'y', 'ncl11': u'x',
                   'ncl12': u'y', 'ncl13': u'x', 'ncl14': u'y', 'ncl15': u'x',
                   'ncl16': u'y', 'ncl17': u'x', 'ncl18': u'y', 'ncl19': u'x'}
        addVars = [u'x', u'y']
        fillValue = 9.96921E36    
    
    else:
        print 'Could not recognize the WRF-Hydro output type given (%s)' %in_type
        usage()

    # Determine which variable contains the coordinate system/coordinate transform variable(s)
    if filetype in ['land', 'terrain_rt', 'fe']:
        crs_var = [varname for varname,ncvar in geo_nc.variables.iteritems() if u'grid_mapping_name' in ncvar.ncattrs()][0]
        addVarAtts[u'grid_mapping'] = crs_var
        addVarAtts[u'esri_pe_string'] = geo_nc.variables[crs_var].getncattr(u'esri_pe_string')
        sr = osr.SpatialReference()
        sr.ImportFromESRI([addVarAtts[u'esri_pe_string']])
        addVarAtts[u'proj4'] = sr.ExportToProj4()
        addVars.append(crs_var)                                                     # Add to the list of variables to append from spatial metadata file

    # Gather global attributes from spatial metadata file
    geoatts = {att:val for att,val in geo_nc.__dict__.iteritems() if att in addGlobalAtts}

    # Iterate over each file in the input directory
    for wrf_file in filesList:
        print 'Processing..... %s' %wrf_file

        # Create the output path and filename
        newfile = os.path.join(output_dir, os.path.basename(wrf_file) + suffix)

        # Open WRF output file for reading

        # WARNING - NetCDF3 is very slow! This script converts all outputs to NETCDF4
        rootgrp1 = netCDF4.Dataset(wrf_file, 'r')                               # Open a netCDF4 write object on the output file
        rootgrp2 = netCDF4.Dataset(newfile, 'w', format=outNCType)              # Open a write object on the output file. , format=rootgrp1.data_model
        rootgrp2.set_fill_on

        # Copy dimensions from WRF-Hydro output file, omitting variables that will be changed
        for dimname, dim in rootgrp1.dimensions.iteritems():
            if dimname in mapDims:
                # Check to see if dimensions already exist in output file                
                if mapDims[dimname] in rootgrp2.dimensions.keys():
                    continue
                else:
                    rootgrp2.createDimension(mapDims[dimname], len(dim))            # Create dimensions with new names
                    continue
            rootgrp2.createDimension(dimname, len(dim))                         # Copy other dimensions from the WRF-Hydro output file
        
        # For forcing files, copy template variables to output file before others        
        if filetype == 'fe':        
            for varname in addVars:                
                ncvar = geo_nc.variables[varname]
                var = rootgrp2.createVariable(varname, ncvar.dtype, ncvar.dimensions)
                var.setncatts(ncvar.__dict__)                                       # Copy the variable attributes

        # Copy variables from WRF-Hydro output file, adding variable attributes as necessary       
        for varname, ncvar in rootgrp1.variables.iteritems():

            # Replace old variable dimension names with the new dimension names as necessary
            varDims = tuple(mapDims.get(varDim) if varDim in mapDims else varDim for varDim in ncvar.dimensions)          
            varAtts = {key:val for key,val in ncvar.__dict__.iteritems() if key not in excludeVarAtts}    # Only keep necessary variable attributes

            ##var = rootgrp2.createVariable(varname, ncvar.dtype, varDims)        # fill_value=fillValue

            if ncvar.dtype == 'int32':

                var = rootgrp2.createVariable(varname, ncvar.dtype, varDims)

            else:
           
                var = rootgrp2.createVariable(varname, ncvar.dtype, varDims, fill_value=fillValue)
          
            var.setncatts(varAtts)
            if varname not in excludeVars:
                rootgrp2.variables[varname].setncatts(addVarAtts)               # Copy additional variable attributes from spatial metadata file
            elif varname == u'time':
                rootgrp2.variables[varname].setncattr(u'standard_name', u'time')# Set standard_name for time

        # Find the coordinate system/transform variable or any additional variables from the spatial metadata file and copy
        # Skip this step for forcing files...has already been done above        
        if filetype == 'fe':
            pass
        else:
            for varname in addVars:
                ncvar = geo_nc.variables[varname]
                var = rootgrp2.createVariable(varname, ncvar.dtype, ncvar.dimensions)
                var.setncatts(ncvar.__dict__)                                       # Copy the variable attributes

        # Copy global attributes from both spatial metdata file and original WRF-Hydro output file
        ncatts = rootgrp1.__dict__
        geoatts2 = geoatts
        geoatts2.update(ncatts)
        rootgrp2.setncatts(geoatts2)

        # Add variable values last (makes the script run faster)       
        for varname, ncvar in rootgrp1.variables.iteritems():
            var = rootgrp2.variables[varname]
            var[:] = ncvar[:]                                                   # Copy the variable data into the newly created variable
        for varname in addVars:
            ncvar = geo_nc.variables[varname]
            var = rootgrp2.variables[varname]
            # For some reason the grid is upside-down because of the way the y values are sorted
            if isGIS and varname == 'y':
                var[:] = ncvar[::-1]                                          # Reverse order of y variable to flip up-down
            else:
                var[:] = ncvar[:]                                               # Copy the variable data into the newly created variable

        # Close files
        rootgrp1.close()
        rootgrp2.close()

    print 'Process %s completed in %s seconds.' %(sys.argv[0], time.time()-tic1)

# ------- End Functions ------- #

if __name__ == '__main__':

    def usage():
        sys.stderr.write(use % sys.argv[0])
        sys.exit(1)
    try:
        (opts, args) = getopt.getopt(sys.argv[1:], 'h')
    except getopt.error:
        usage()

    # Input size testing
    if len(sys.argv) != 5:
        usage()

    # Assign inputs to global variables
    in_spatial_metadata_nc = os.path.abspath(sys.argv[1])
    in_dir = os.path.abspath(sys.argv[2])
    in_type = sys.argv[3]
    out_dir = os.path.abspath(sys.argv[4])

    # Check WRF-Hydro output type
    typelist = ['land', 'terrain_rt', 'channel_rt', 'reservoir', 'fe']
    if in_type not in typelist:
        print 'Output type provided (%s) not supported. Must be one of %s' %(in_type, typelist)
        usage()

    # Check output directory
    if not os.path.exists(out_dir):
        print 'Output directory does not exist. Attempting to create Output Directory %s' %out_dir
        os.makedirs(out_dir)

    # Get list of files in the input directory
    files_list = Gather_Input_Files(in_dir, in_type)
    print '%s %s files found in input directory %s' %(len(files_list), in_type, in_dir)
    if len(files_list) == 0:
        print '0 files found in Input Directory. Exiting...'
        usage()

    # Test input spatial metadata file for consistency with request
    test_results, geogrid, gis_file = test_metadata_input(in_spatial_metadata_nc, in_type, files_list[0])
    if test_results == False:
        print 'Output type provided (%s) does not match spatial metadata file provided.' %(in_type)
        usage()

    # Run main function
    main(in_spatial_metadata_nc, in_dir, in_type, out_dir, files_list, isGEOGRID=geogrid, isGIS=gis_file)
