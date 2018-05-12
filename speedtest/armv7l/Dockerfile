FROM resin/armv7hf-debian-qemu
MAINTAINER flochtililoch
ENV REFRESHED_ON 2018-05-12
ENV VERSION 0.0.1

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install dependencies
  apt-get install -y build-essential python-pip && \
  easy_install speedtest-cli

RUN [ "cross-build-end" ]

CMD \
  speedtest-cli