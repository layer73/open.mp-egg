FROM debian:12-slim

RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y \
        curl \
        wget \
        ca-certificates \
        unzip \
        tar \
        libc6:i386 \
        libstdc++6:i386 \
        zlib1g:i386 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER container

ENV USER=container
ENV HOME=/home/container

WORKDIR /home/container

CMD ["bash"]
