FROM resin/armv7hf-debian-qemu
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-11-12
ENV VERSION 0.0.1

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install IPTables
  apt-get install iptables -y

RUN [ "cross-build-end" ]
