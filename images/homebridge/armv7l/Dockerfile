FROM flochtililoch/armv7l-node:6.9.3
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-01-04

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install Homebridge dependencies
  apt-get install -y git python build-essential libavahi-compat-libdnssd-dev

RUN \
  # Install Homebridge
  npm install homebridge@0.4.16 -g --unsafe-perm

RUN \
  # Install Homebridge Misfit Bolt plugin
  npm install homebridge-misfit-bolt@0.1.4 -g && \

  # Install Homebridge LIRC Accessory plugin
  npm install homebridge-lirc-accessory@0.0.1 -g && \

  # Install Homebridge Pivot Power Genius plugin
  npm install homebridge-pivot-power-genius@0.0.2 -g

RUN [ "cross-build-end" ]

CMD homebridge
