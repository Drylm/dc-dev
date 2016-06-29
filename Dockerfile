FROM debian:unstable

WORKDIR /src/kos

RUN apt-get -y update && apt-get --fix-missing -y install \
    apt-utils \
    g++ \
    git \
    make \
    texinfo \
    wget \
    bzip2 \
    libjpeg-dev
    

ADD kos $WORKDIR

RUN cd /src/utils/dc-chain \
    && ./download.sh \
    && ./unpack.sh \
    && make