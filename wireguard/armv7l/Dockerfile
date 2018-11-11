FROM resin/armv7hf-debian-qemu
MAINTAINER flochtililoch
ENV REFRESHED_ON 2018-11-11

RUN [ "cross-build-start" ]

RUN \
  echo "deb http://deb.debian.org/debian/ unstable main" > /etc/apt/sources.list.d/unstable.list && \
  printf 'Package: *\nPin: release a=unstable\nPin-Priority: 150\n' > /etc/apt/preferences.d/limit-unstable && \
  apt update && \
  apt install wireguard

RUN [ "cross-build-end" ]

COPY run.sh /run.sh

ENV PRIVKEY=
ENV PEERKEY=
ENV LPORT=12345
ENV OWNIP=192.168.0.1
ENV BLOCKSIZE=16
ENV PEERADDR=

CMD /run.sh