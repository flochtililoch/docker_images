FROM flochtililoch/armv7l-homebridge
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-10-01
ENV VERSION 0.0.2

RUN \
  # Install Homebridge Pivot Power Genius plugin
  npm install homebridge-pivot-power-genius@${VERSION} -g

CMD homebridge
