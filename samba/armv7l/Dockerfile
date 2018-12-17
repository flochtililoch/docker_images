FROM resin/armv7hf-debian-qemu
MAINTAINER flochtililoch
ENV REFRESHED_ON 2018-12-16

RUN [ "cross-build-start" ]

RUN \
  apt-get update && \
  apt-get upgrade -y

RUN \
  apt-get install -y samba samba-common-bin && \
  mkdir /share && chmod 0777 /share

RUN [ "cross-build-end" ]

EXPOSE 445

CMD ["/usr/sbin/smbd", "-s", "/smb.conf", "-F", "-S"]
