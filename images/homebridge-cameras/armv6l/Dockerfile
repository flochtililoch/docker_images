FROM flochtililoch/armv6l-homebridge
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-10-01
ENV VERSION 0.0.3

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

CMD homebridge
