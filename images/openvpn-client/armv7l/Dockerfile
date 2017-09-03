FROM resin/armv7hf-debian
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-09-03

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install OpenVPN
  apt-get install openvpn -y

CMD \
  # Run OpenVPN
  openvpn
