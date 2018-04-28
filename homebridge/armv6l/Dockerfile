FROM flochtililoch/armv6l-node:6.9.3
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-10-01
ENV VERSION 0.4.26

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install Homebridge dependencies
  apt-get install -y git python build-essential libavahi-compat-libdnssd-dev

RUN \
  # Install Homebridge
  npm install homebridge@${VERSION} -g --unsafe-perm

RUN [ "cross-build-end" ]