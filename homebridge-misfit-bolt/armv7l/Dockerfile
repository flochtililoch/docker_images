FROM flochtililoch/armv7l-homebridge:0.4.26
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-10-01
ENV VERSION 0.1.4

RUN [ "cross-build-start" ]

RUN \
  # Install Homebridge Misfit Bolt plugin
  npm install homebridge-misfit-bolt@${VERSION} -g

RUN [ "cross-build-end" ]

CMD homebridge
