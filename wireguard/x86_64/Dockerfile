FROM ubuntu:16.04
MAINTAINER flochtililoch
ENV REFRESHED_ON 2019-03-15

RUN apt-get update -y && \
    apt-get install -y software-properties-common iptables curl iproute2 ifupdown iputils-ping && \
    echo resolvconf resolvconf/linkify-resolvconf boolean false | debconf-set-selections && \
    echo "REPORT_ABSENT_SYMLINK=no" >> /etc/default/resolvconf && \
    add-apt-repository --yes ppa:wireguard/wireguard && \
    apt-get install resolvconf

RUN [ "cross-build-end" ]

COPY run.sh /run.sh

ENTRYPOINT ["/run.sh"]
CMD []
