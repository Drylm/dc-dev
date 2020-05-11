FROM debian:10

LABEL maintainer="muller.john@gmail.com"
ARG BUILD_DATE
LABEL org.label-schema.build-date=$BUILD_DATE

RUN apt-get -y update && apt-get --fix-missing -y install \
    make \
    curl


#RUN curl -sSL https://drylm.org/dl/dc-toolchain.tar.gz \
#    | tar -vxz

ADD dc-toolchain.tar.gz /
ADD output/kos.tar.gz /

COPY environ_runtime.sh /usr/local/dc/
RUN echo "source /usr/local/dc/environ_runtime.sh" >> /etc/bash.bashrc
#RUN ["/bin/bash", "-c", "source /usr/local/dc/environ_runtime.sh"]

ENV PATH /opt/toolchains/dc/bin:$PATH

