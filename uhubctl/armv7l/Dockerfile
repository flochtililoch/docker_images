FROM resin/armv7hf-debian-qemu
MAINTAINER flochtililoch
ENV REFRESHED_ON 2018-09-23
ENV VERSION bfc4477

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install dependencies
  apt-get install -y build-essential git libusb-1.0-0-dev

RUN \
  # Build/install uhunctl
  git clone https://github.com/mvp/uhubctl && \
  cd uhubctl && \
  git checkout $VERSION && \
  make && \
  make install

RUN [ "cross-build-end" ]
