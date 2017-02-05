FROM flochtililoch/armv7l-node:test
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

RUN \
  # Install Bluetooth MQTT Proxy
  npm install bluetooth-mqtt-proxy@0.0.4 -g --unsafe-perm

RUN [ "cross-build-end" ]

CMD hciconfig hci0 up && bluetooth-mqtt-proxy -c=~/.bluetooth-mqtt-proxy/config.json
