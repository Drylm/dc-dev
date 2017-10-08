FROM debian:testing
MAINTAINER Jonathan Muller <muller.john@gmail.com>

RUN apt-get -y update && apt-get --fix-missing -y install \
    make \
    curl


RUN curl -sSL http://drylm.org/dl/dc-toolchain.tar.gz \
    | tar -vxz

ADD output/kos.tar.gz /

COPY environ_runtime.sh /usr/local/dc/
RUN echo "source /usr/local/dc/environ_runtime.sh" >> /etc/bash.bashrc
#RUN ["/bin/bash", "-c", "source /usr/local/dc/environ_runtime.sh"]

ENV PATH /opt/toolchains/dc/bin:$PATH

