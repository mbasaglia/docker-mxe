FROM ubuntu:latest

WORKDIR /

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    autoconf \
    automake \
    autopoint \
    bash \
    bison \
    bzip2 \
    flex \
    g++ \
    gettext \
    git \
    gperf \
    intltool \
    libgdk-pixbuf2.0-dev \
    libltdl-dev \
    libssl-dev \
    libtool-bin \
    libxml-parser-perl \
    lzip \
    make \
    openssl \
    p7zip-full \
    patch \
    perl \
    pkg-config \
    python \
    ruby \
    sed \
    unzip \
    wget \
    xz-utils
RUN git clone https://github.com/mxe/mxe
RUN cd mxe && make MXE_TARGETS=x86_64-w64-mingw32.static.posix MXE_PLUGIN_DIRS=plugins/gcc9 -j2 JOBS=2 qt5 boost gcc
ENV PATH="/mxe/usr/bin:${PATH}"

