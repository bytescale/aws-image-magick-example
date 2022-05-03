#!/usr/bin/env bash
set -e

cd /root
curl http://download.osgeo.org/libtiff/tiff-4.3.0.tar.gz -L -o tmp-libtiff.tar.gz
tar xf tmp-libtiff.tar.gz
cd tiff*

PKG_CONFIG_PATH=/root/build/cache/lib/pkgconfig \
  ./configure \
    CPPFLAGS=-I/root/build/cache/include \
    LDFLAGS=-L/root/build/cache/lib \
    --disable-dependency-tracking \
    --disable-shared \
    --enable-static \
    --prefix=/root/build/cache

make
make install