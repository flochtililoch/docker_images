FROM resin/armv7hf-debian:jessie-20170107
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-01-22

# Instructions from http://jpmens.net/2013/09/01/installing-mosquitto-on-a-raspberry-pi/

# Add Mosquitto repo key
ADD http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key /

# Add Mosquitto packages list
ADD http://repo.mosquitto.org/debian/mosquitto-jessie.list /etc/apt/sources.list.d/

# Update / upgrade system
RUN \
  apt-key add mosquitto-repo.gpg.key && \
  apt-get update && \
  apt-get upgrade -y

# Install Mosquitto
RUN \
  apt-get install mosquitto

# Run Mosquitto
CMD \
  /usr/sbin/mosquitto -c /mqtt/config/mosquitto.conf
