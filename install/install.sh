#!/bin/bash

cd /tmp || exit 1

wget -O open.mp-linux-x86.tar.gz \
https://github.com/openmultiplayer/open.mp/releases/download/v1.5.8.3079/open.mp-linux-x86.tar.gz

mkdir -p /mnt/server

tar -xzf open.mp-linux-x86.tar.gz \
    --strip-components=1 \
    -C /mnt/server/

chmod +x /mnt/server/omp-server
find /mnt/server -type f -name "*.so" -exec chmod +x {} \;

export HOME=/mnt/server
