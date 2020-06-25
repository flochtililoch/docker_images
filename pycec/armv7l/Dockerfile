FROM resin/armv7hf-debian-qemu
MAINTAINER flochtililoch
ENV REFRESHED_ON 2020-06-25

RUN [ "cross-build-start" ]

RUN \
  apt-get update && \
  apt-get upgrade -y

RUN \
  apt-get install -y git python3 python3-pip libcec-dev && \
  git clone git://github.com/konikvranik/pyCEC.git pyCEC && \
  cd pyCEC && \
  pip3 install cec

RUN [ "cross-build-end" ]