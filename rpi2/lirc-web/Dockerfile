# LIRC WEB
# Build: docker build -t flochtililoch/lirc_web .
# Run: docker run -p 3000:3000 --device /dev/mem:/dev/mem -v /lib/modules:/lib/modules --rm --privileged -it flochtililoch/lirc_web
########

FROM resin/rpi-raspbian
MAINTAINER flochtililoch

ENV NODE_VERSION=v5.3.0
ENV NODE_ARCH=armv7l
ENV LIRC_GPIO_IN=23 LIRC_GPIO_OUT=22
ENV LIRC_WEB=/home/lirc_web

ADD https://nodejs.org/dist/${NODE_VERSION}/node-${NODE_VERSION}-linux-${NODE_ARCH}.tar.gz /

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade && \

  # Install LIRC
  apt-get install lirc -y && \
  echo 'lirc_dev' >> /etc/modules && \
  echo 'lirc_rpi gpio_in_pin=${LIRC_GPIO_IN} gpio_out_pin=${LIRC_GPIO_OUT}' >> /etc/modules && \

  # Install Node
  tar -xvf /node-${NODE_VERSION}-linux-${NODE_ARCH}.tar.gz && \
  sudo cp -R node-${NODE_VERSION}-linux-${NODE_ARCH}/* /usr/local/ && \
  rm -rf node-${NODE_VERSION}-linux-${NODE_ARCH} && \
  rm node-${NODE_VERSION}-linux-${NODE_ARCH}.tar.gz && \

  # Install lirc-web
  apt-get install git -y && \
  git clone https://github.com/alexbain/lirc_web.git $LIRC_WEB && \
  cd $LIRC_WEB && \
  /usr/local/bin/npm install

# LIRC Configuration
COPY etc/lirc/*.conf  /etc/lirc/

WORKDIR $LIRC_WEB
CMD /etc/init.d/lirc start && node app.js
