FROM flochtililoch/armv7l-homebridge:0.4.26
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-10-01
ENV VERSION 0.0.3

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install wget
  apt-get install -y wget

RUN \
  # Install ffmpeg
  wget goo.gl/gMGA81 -O ffmpeg.deb && \
  dpkg -i ffmpeg.deb

RUN \
  # Install Homebridge Camera ffmpeg plugin (OMX mod)
  npm install homebridge-camera-ffmpeg-omx@${VERSION} -g

RUN [ "cross-build-end" ]

CMD homebridge
