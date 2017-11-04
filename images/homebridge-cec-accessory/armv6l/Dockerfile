FROM flochtililoch/armv6l-homebridge:0.4.26
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-11-04
ENV VERSION 0.1.1

RUN [ "cross-build-start" ]

RUN \
  # Install Homebridge CEC Accessory plugin
  npm install homebridge-cec-accessory@${VERSION} -g

RUN [ "cross-build-end" ]

CMD homebridge
