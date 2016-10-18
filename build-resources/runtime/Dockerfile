FROM debian:testing

RUN apt-get -y update && apt-get --fix-missing -y install \
   make

ADD dc-toolchain.tar.gz /
ADD output/kos.tar.gz /

COPY environ_runtime.sh /usr/local/dc/