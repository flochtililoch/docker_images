FROM flochtililoch/armv7l-node
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-02-05

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install Bluetooth dependencies
  apt-get install -y git python build-essential \
  bluez bluetooth usbutils libudev-dev

RUN [ "cross-build-end" ]
