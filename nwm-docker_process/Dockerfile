###
# Dockerfile for TDS
###

FROM ubuntu:18.04

MAINTAINER dblodgett

USER root
    
ENV TZ 'America/Chicago'
RUN echo $TZ > /etc/timezone && \
  apt-get update && apt-get install -y tzdata && \
  rm /etc/localtime && \
  ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
  dpkg-reconfigure -f noninteractive tzdata && \
  apt-get clean
  
RUN \
    apt-get -y update; \
    apt-get -y install netcdf-bin r-base wget nco cron bc

###
# Setup the crontab to run newm download and transforms
###

ADD files/nwm_crontab /etc/cron.d/nwm_crontab

RUN chmod 0644 /etc/cron.d/nwm_crontab

RUN crontab /etc/cron.d/nwm_crontab

###
# Start container
###

CMD cron && touch /nwm/content/logs/process_log && cd /nwm/content/; Rscript /nwm/bin/run_realtime.R mr7,sr,aa,lr1 && tail -f /nwm/content/logs/process_log

