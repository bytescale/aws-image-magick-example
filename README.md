# Amazon Linux 2 ImageMagick Binaries (From Source)

This repository builds standalone ImageMagick binaries that can be copy-pasted to any AWS Lambda function or Amazon Linux 2 EC2 instance, and executed, without requiring any other dependencies to be installed on said machine.

Original blog post:

https://upload.io/blog/installing-imagemagick-on-amazon-linux-2/

## Quick Start

1. Run the following...

  ```shell
  docker-compose up --build
  ```

2. Wait for the command to complete...

3. The `./binaries` directory (in this repository) will now contain a portable set of ImageMagick binaries.