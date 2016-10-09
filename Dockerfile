FROM debian:testing

WORKDIR /src/kos

RUN apt-get -y update && apt-get --fix-missing -y install \
    apt-utils \
    g++ \
    git \
    make \
    texinfo \
    wget \
    bzip2 \
    curl \
    python \
    subversion \
    libjpeg-dev \
    libpng-dev

#RUN cd /src/utils/dc-chain \
#    && ./download.sh \
#    && ./unpack.sh \
#    && make
