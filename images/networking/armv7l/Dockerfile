FROM resin/armv7hf-debian
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-09-04

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install IPTables
  apt-get install iptables -y
