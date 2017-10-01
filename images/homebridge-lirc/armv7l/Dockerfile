FROM flochtililoch/armv7l-homebridge:0.4.26
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-10-01
ENV VERSION 0.0.1

RUN \
  # Install Homebridge LIRC Accessory plugin
  npm install homebridge-lirc-accessory@${VERSION} -g && \

CMD homebridge
