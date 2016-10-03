FROM resin/armv7hf-debian-qemu
MAINTAINER flochtililoch

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install dependencies
  apt-get install -y git dialog

ENV RETROPIE_VERSION 538e600

RUN \
  # Install shairport-sync
  git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git && \
  cd RetroPie-Setup && \
  git checkout $RETROPIE_VERSION && \
  chmod +x retropie_setup.sh

RUN [ "cross-build-end" ]

CMD \
  bash