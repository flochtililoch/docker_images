FROM resin/armv7hf-debian-qemu
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-01-04

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install dependencies
  apt-get install -y build-essential git autoconf automake \
  libtool libdaemon-dev libasound2-dev libpopt-dev \
  libconfig-dev libavahi-client-dev libssl-dev libsoxr-dev \
  alsa-utils

ENV SHAIRPORT_SYNC_VERSION cbc671a

RUN \
  # Install shairport-sync
  git clone https://github.com/mikebrady/shairport-sync && \
  cd shairport-sync && \
  git checkout $SHAIRPORT_SYNC_VERSION && \
  autoreconf -i -f && \
  ./configure --with-alsa --with-avahi --with-ssl=openssl --with-metadata --with-soxr --with-systemd && \
  make && \
  groupadd -r shairport-sync >/dev/null && \
  useradd -r -M -g shairport-sync -s /usr/bin/nologin chip && \
  make install

RUN [ "cross-build-end" ]

CMD \
  shairport-sync
