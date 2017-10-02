FROM flochtililoch/armv6l-homebridge:0.4.26
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-10-01
ENV VERSION 0.0.2

RUN [ "cross-build-start" ]

RUN \
  # Install Homebridge Pivot Power Genius plugin
  npm install homebridge-pivot-power-genius@${VERSION} -g

RUN [ "cross-build-end" ]

CMD homebridge