FROM debian:unstable

RUN apt-get -y update && apt-get -y install \
    apt-utils \
    g++ \
    git \
    make \
    texinfo \
    wget \
    bzip2