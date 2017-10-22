FROM flochtililoch/armv7l-homebridge:0.4.26
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-10-21
ENV VERSION 2.3.1

RUN [ "cross-build-start" ]

RUN \
  # Install Homebridge Home Assistant plugin
  npm install homebridge-homeassistant@${VERSION} -g

RUN \
  # Install Netcat
  apt-get update && apt-get install netcat

RUN [ "cross-build-end" ]

COPY ../wait-for /wait-for

CMD homebridge