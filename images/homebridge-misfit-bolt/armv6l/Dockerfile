FROM flochtililoch/armv6l-homebridge
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-10-01
ENV VERSION 0.1.4

RUN \
  # Install Homebridge Misfit Bolt plugin
  npm install homebridge-misfit-bolt@${VERSION} -g && \

CMD homebridge
