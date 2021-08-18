###
# Dockerfile for TDS
###

FROM unidata/tomcat-docker:8.5

MAINTAINER Unidata

###
# Usual maintenance
###

USER root
    
RUN \
    apt-get -y update; \
    apt-get -y install netcdf-bin
    
RUN mkdir /downloads

WORKDIR /downloads

###
# Grab and unzip the TDS
###

ENV TDS_VERSION 4.6.11

ENV TDS_CONTENT_ROOT_PATH /usr/local/tomcat/content

# The amount of Xmx and Xms memory Java args to allocate to THREDDS

ENV THREDDS_XMX_SIZE 4G

ENV THREDDS_XMS_SIZE 4G

ENV THREDDS_WAR_URL https://artifacts.unidata.ucar.edu/repository/unidata-releases/edu/ucar/tds/${TDS_VERSION}/tds-${TDS_VERSION}.war

RUN curl -fSL "${THREDDS_WAR_URL}" -o thredds.war

RUN unzip thredds.war -d ${CATALINA_HOME}/webapps/thredds/

###
# Default thredds config
###

RUN mkdir -p ${CATALINA_HOME}/content/thredds

# COPY files/threddsConfig.xml ${CATALINA_HOME}/content/thredds/threddsConfig.xml

###
# Tomcat users
###

# COPY files/tomcat-users.xml ${CATALINA_HOME}/conf/tomcat-users.xml

###
# Tomcat Java Options
###

COPY files/setenv.sh $CATALINA_HOME/bin/setenv.sh

COPY files/javaopts.sh $CATALINA_HOME/bin/javaopts.sh

RUN chmod 755 $CATALINA_HOME/bin/*.sh

###
# Creating .systemPrefs directory according to
# http://www.unidata.ucar.edu/software/thredds/current/tds/faq.html#javaUtilPrefs
# and as defined in the files/javaopts.sh file
###

RUN mkdir -p ${CATALINA_HOME}/javaUtilPrefs/.systemPrefs

###
# Expose ports
###

EXPOSE 8080 8443

###
# Cleanup
###

WORKDIR ${CATALINA_HOME}

RUN rm -rf /downloads

###
# Inherited from parent container
###

ENTRYPOINT ["/entrypoint.sh"]

###
# Start container
###

CMD ["catalina.sh", "run"]


HEALTHCHECK --interval=60s --timeout=20s \
	CMD curl --fail 'http://localhost:8080/thredds/catalog.html' || exit 1
