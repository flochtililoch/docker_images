FROM flochtililoch/armv7l-homebridge:0.4.26
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-11-04
ENV VERSION 0.1.1

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install cec-utils
  apt-get install cec-utils

RUN \
  # Install Homebridge CEC Accessory plugin
  npm install homebridge-cec-accessory@${VERSION} -g

RUN [ "cross-build-end" ]

CMD homebridge
