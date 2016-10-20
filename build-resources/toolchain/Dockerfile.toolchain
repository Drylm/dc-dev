FROM debian:testing
MAINTAINER Jonathan Muller <muller.john@gmail.com>

WORKDIR /src/kos

RUN apt-get -y update && apt-get --fix-missing -y install \
    apt-utils \
    g++ \
    git \
    make \
    texinfo \
    wget \
    bzip2

COPY compile-toolchain.sh /
ENTRYPOINT ["/bin/sh", "/compile-toolchain.sh"]
