#!/usr/bin/env bash
set -e

cd /root
curl https://github.com/strukturag/libheif/releases/download/v1.12.0/libheif-1.12.0.tar.gz -L -o tmp-libheif.tar.gz
tar xf tmp-libheif.tar.gz
cd libheif*

sh autogen.sh

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