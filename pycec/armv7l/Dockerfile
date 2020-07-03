FROM balenalib/raspberry-pi2-python:3.8-buster-build
MAINTAINER flochtililoch
ENV REFRESHED_ON 2020-06-25

# Mostly inspired from:
# https://github.com/jonaseck2/rpi-raspbian-libcec-py/blob/master/Dockerfile

RUN [ "cross-build-start" ]

RUN \
  apt-get update && \
  apt-get upgrade -y
  
RUN \
  apt-get install cmake curl gcc libssl-dev libudev-dev libxrandr-dev python-dev swig

RUN rm -rf /var/cache/apk/*

# Userland
WORKDIR /root
RUN \
  curl -L https://api.github.com/repos/raspberrypi/userland/tarball | tar xvz && \
  cd raspberrypi-userland* && \
  ./buildme

# Platform
ENV P8_PLATFORM_VERSION=2.1.0.1
WORKDIR /root
ADD https://github.com/Pulse-Eight/platform/archive/p8-platform-${P8_PLATFORM_VERSION}.tar.gz ./
RUN \
  tar xvzf p8-platform-${P8_PLATFORM_VERSION}.tar.gz && \
  rm p8-platform-*.tar.gz && \
  mv platform* platform && \
  mkdir platform/build && \
  cd platform/build && \
  cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr .. && \
  make && \
  make install

# Libcec
ENV LIBCEC_VERSION=5.0.0
WORKDIR /root
ADD https://github.com/Pulse-Eight/libcec/archive/libcec-${LIBCEC_VERSION}.tar.gz ./
RUN \
  tar xvzf libcec-${LIBCEC_VERSION}.tar.gz && \
  rm libcec-*.tar.gz && \
  mv libcec* libcec && \
  mkdir libcec/build && \
  cd libcec/build && \
  PYTHON_LIBDIR=$(python -c 'from distutils import sysconfig; print(sysconfig.get_config_var("LIBDIR"))') && \
  PYTHON_LDLIBRARY=$(python -c 'from distutils import sysconfig; print(sysconfig.get_config_var("LDLIBRARY"))') && \
  PYTHON_LIBRARY="${PYTHON_LIBDIR}/${PYTHON_LDLIBRARY}" && \
  PYTHON_INCLUDE_DIR=$(python -c 'from distutils import sysconfig; print(sysconfig.get_python_inc())') && \
  cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr \
        -DRPI_INCLUDE_DIR=/opt/vc/include \
        -DRPI_LIB_DIR=/opt/vc/lib \
        -DPYTHON_LIBRARY="${PYTHON_LIBRARY}" \
        -DPYTHON_INCLUDE_DIR="${PYTHON_INCLUDE_DIR}" .. && \
  make && \
  make install
  
RUN \
  echo "cec" > "/usr/lib/python3.8/dist-packages/cec.pth"

# Cleanup
WORKDIR /root
RUN \
 rm -rf cmake platform libcec raspberrypi-userland*

ENV LD_LIBRARY_PATH=/opt/vc/lib:${LD_LIBRARY_PATH} PYTHONPATH=${PYTHONPATH}:/usr/lib/python3.8/dist-packages

RUN \
  git clone git://github.com/konikvranik/pyCEC.git pyCEC && \
  cd pyCEC

RUN [ "cross-build-end" ]
