FROM flochtililoch/armv6l-homebridge:0.4.26
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-11-26
ENV VERSION 3.0.2

RUN [ "cross-build-start" ]

RUN \
  # Install Homebridge Home Assistant plugin
  npm install homebridge-homeassistant@${VERSION} -g

RUN [ "cross-build-end" ]

CMD homebridge