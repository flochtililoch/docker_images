FROM resin/armv7hf-debian-qemu
MAINTAINER flochtililoch
ENV REFRESHED_ON 2019-09-04

RUN [ "cross-build-start" ]

RUN \
  apt-get update && \
  apt-get upgrade -y

RUN \
  apt-get install -y dhcp-helper

RUN [ "cross-build-end" ]

EXPOSE 67 67/udp
ENTRYPOINT ["dhcp-helper"]
