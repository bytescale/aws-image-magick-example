#!/usr/bin/env bash
set -e

cd /root
curl https://github.com/ImageMagick/ImageMagick/archive/7.0.8-45.tar.gz -L -o tmp-imagemagick.tar.gz
tar xf tmp-imagemagick.tar.gz
cd ImageMagick*

PKG_CONFIG_PATH=/root/build/cache/lib/pkgconfig \
  ./configure \
    CPPFLAGS=-I/root/build/cache/include \
    LDFLAGS="-L/root/build/cache/lib -lstdc++" \
    --disable-dependency-tracking \
    --disable-shared \
    --enable-static \
    --prefix=/root/result \
    --enable-delegate-build \
    --disable-installed \
    --without-modules \
    --disable-docs \
    --without-magick-plus-plus \
    --without-perl \
    --without-x \
    --disable-openmp

make clean
make all
make install