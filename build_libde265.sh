#!/usr/bin/env bash
set -e

cd /root
curl https://github.com/strukturag/libde265/releases/download/v1.0.8/libde265-1.0.8.tar.gz -L -o tmp-libde265
tar xf tmp-libde265
cd libde265*

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