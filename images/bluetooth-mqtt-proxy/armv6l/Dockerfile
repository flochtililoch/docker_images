FROM flochtililoch/armv6l-node:6.9.3
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-02-05

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

CMD hciconfig hci0 up && bluetooth-mqtt-proxy -c=~/.bluetooth-mqtt-proxy/config.json
