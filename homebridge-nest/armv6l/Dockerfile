FROM flochtililoch/armv6l-homebridge:0.4.26
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-12-17
ENV VERSION 1.1.3

RUN [ "cross-build-start" ]

RUN \
  # Install Homebridge Nest plugin
  npm install homebridge-nest@${VERSION} -g

RUN [ "cross-build-end" ]

CMD homebridge
