FROM debian:10

LABEL maintainer="muller.john@gmail.com"
ARG BUILD_DATE
LABEL org.label-schema.build-date=$BUILD_DATE

RUN apt-get -y update && apt-get --fix-missing -y install \
    make \
    genisoimage

ADD dc-toolchain.tar.gz /
ADD output/kos.tar.gz /

COPY environ_runtime.sh /usr/local/dc/
COPY build.sh /src/
COPY Makefile.burn.rules /usr/local/dc/

RUN echo "source /usr/local/dc/environ_runtime.sh" >> /etc/bash.bashrc


ENV PATH /opt/toolchains/dc/bin:$PATH

WORKDIR /src/project
CMD ["/bin/sh", "-c", "/src/build.sh"]

