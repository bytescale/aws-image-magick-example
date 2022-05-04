# Amazon Linux 2 ImageMagick Binaries (From Source)

This repository builds standalone ImageMagick binaries for Amazon Linux 2 that can be copy-pasted to any AWS Lambda function or EC2 instance.

**Blog post:** https://upload.io/blog/installing-imagemagick-on-amazon-linux-2/

## Quick Start

1. Build the docker image:

   ```shell
   docker build \
     --platform linux/amd64 \
     -t amazonlinuxmagick .
   ```

2. Extract the docker image's ImageMagick binaries:

   ```shell
   docker run \
     --rm -it \
     --platform linux/amd64 \
     -v $(pwd)/binaries:/root/output \
     amazonlinuxmagick \
     mv /root/result /root/output
   ```

3. `./binaries/result` on your host machine now contains a portable set of ImageMagick binaries!
