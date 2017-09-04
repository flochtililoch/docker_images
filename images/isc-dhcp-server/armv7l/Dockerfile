FROM resin/armv7hf-debian
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-09-03

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install ISC DHCP Server
  apt-get install isc-dhcp-server -y

RUN touch /var/lib/dhcp/dhcpd.leases
VOLUME ["/var/lib/dhcp", "/etc/dhcp"]

ENTRYPOINT ["/usr/sbin/dhcpd", "-d", "--no-pid"]

