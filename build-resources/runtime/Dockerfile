FROM debian:10

LABEL maintainer="muller.john@gmail.com"
ARG BUILD_DATE
LABEL org.label-schema.build-date=$BUILD_DATE

RUN apt-get -y update && apt-get --fix-missing -y install \
    make 

ADD dc-toolchain.tar.gz /
ADD output/kos.tar.gz /

COPY environ_runtime.sh /usr/local/dc/
COPY build.sh /src/

RUN echo "source /usr/local/dc/environ_runtime.sh" >> /etc/bash.bashrc


ENV PATH /opt/toolchains/dc/bin:$PATH

WORKDIR /src/project
ENTRYPOINT ["/bin/sh", "-c", "/src/build.sh"]

