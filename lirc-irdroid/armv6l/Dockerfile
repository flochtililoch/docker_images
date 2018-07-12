FROM resin/rpi-raspbian
MAINTAINER flochtililoch
ENV REFRESHED_ON 2018-07-11

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

# Install/copy dependencies
RUN apt-get install build-essential unzip -y
COPY ./irtoy.zip /irtoy.zip

RUN \
  # Build & install LIRC
  unzip /irtoy.zip && \
  cd /irtoy && \
  ./configure.sh && \
  make install && \
  mkdir -p /var/run/lirc

RUN [ "cross-build-end" ]

CMD \
  # Run LIRC
  /usr/local/sbin/lircd \
    --driver=usb_irtoy \
    --device=/dev/lirc0 \
    --nodaemon
