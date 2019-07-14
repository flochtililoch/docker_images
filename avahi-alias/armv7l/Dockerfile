FROM resin/armv7hf-debian-qemu
MAINTAINER flochtililoch
ENV REFRESHED_ON 2019-07-14

RUN [ "cross-build-start" ]

RUN \
  apt-get update && \
  apt-get upgrade -y

RUN \
  apt-get install -y git python-avahi

RUN [ "cross-build-end" ]

COPY ./avahi-alias.py /usr/local/bin/avahi-alias
RUN chmod +x /usr/local/bin/avahi-alias
