#!/usr/bin/env bash
set -e

cd /root
curl https://github.com/webmproject/libwebp/archive/v1.2.1.tar.gz -L -o tmp-libwebp.tar.gz
tar xf tmp-libwebp.tar.gz
cd libwebp*

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