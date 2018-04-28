FROM resin/armv7hf-debian-qemu
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-11-12
ENV VERSION 0.0.1

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install ISC DHCP Server
  apt-get install isc-dhcp-server -y

RUN touch /var/lib/dhcp/dhcpd.leases
VOLUME ["/var/lib/dhcp", "/etc/dhcp"]

RUN [ "cross-build-end" ]

ENTRYPOINT ["/usr/sbin/dhcpd", "-d", "--no-pid"]
