#!/usr/bin/env bash
set -e

cd /root
curl https://github.com/winlibs/libjpeg/archive/refs/tags/libjpeg-9c.tar.gz -L -o tmp-libjpeg.tar.gz
tar xf tmp-libjpeg.tar.gz
cd libjpeg*

dos2unix *
dos2unix -f configure
chmod +x configure

PKG_CONFIG_PATH=/root/build/cache/lib/pkgconfig \
  ./configure \
    CPPFLAGS=-I/root/build/cache/include \
    LDFLAGS=-L/root/build/cache/lib \
    --disable-dependency-tracking \
    --disable-shared \
    --enable-static \
    --prefix=/root/build/cache

dos2unix -f libtool

make
make install