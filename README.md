# Amazon Linux 2 ImageMagick Binaries (From Source)

This repository builds standalone ImageMagick binaries for Amazon Linux 2 that can be copy-pasted to any AWS Lambda function or EC2 instance.

**Original blog post:** https://upload.io/blog/installing-imagemagick-on-amazon-linux-2/

## Quick Start

1. Run:

  ```shell
  docker-compose up --build
  ```

2. Wait for it to complete...

3. The `./binaries` directory will now contain a portable set of ImageMagick binaries!