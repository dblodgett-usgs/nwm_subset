# NWM Docker

This Docker was derived from: https://github.com/Unidata/thredds-docker

See the `Docker` file for major changes.
- hdf5 and netcdf installed from apt-get. While these versions are older, they are compatible with the apt-get version of nco.
- nco installed from apt-get. This is an older version of nco, but works for the purposes of this container.
- healthcheck modified to be more lenient.
- restart policy added -- this is not tested as of this commit.

See docker-compose.yml for required directories. Note that the THREDDS "content" directory including the THREDDS catalog and config are required in directories outside this container.

In testing, this container has been started using `docker-compose up --build`