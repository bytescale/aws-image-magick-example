# syntax=docker/dockerfile:1
FROM amazonlinux:2

# Install OS packages
RUN yum install -y git gcc gcc-c++ cpp cpio make cmake automake autoconf chkconfig clang clang-libs dos2unix zlib zlib-devel zip unzip tar perl libxml2 bzip2 bzip2-libs xz xz-libs pkgconfig libtool