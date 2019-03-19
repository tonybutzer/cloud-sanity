FROM ubuntu:18.04
ENV theVersion 1.1

RUN apt-get update && apt-get install -y git && apt-get install -y make &&  apt-get -y install sudo && \
	useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo && \
	apt-get install -y software-properties-common && \
	apt-get install -y vim && \
	apt-get install ca-certificates

# Fix an issue with libcurl...
RUN mkdir -p /etc/pki/tls/certs \
	&& ln -s /etc/ssl/certs/ca-certificates.crt /etc/pki/tls/certs/ca-bundle.crt;

USER root
CMD /bin/bash


RUN mkdir -p /opt 
WORKDIR /opt

RUN git clone https://github.com/tonybutzer/lite-stac

WORKDIR /opt/lite-stac/pkg
RUN make

WORKDIR /opt/lite-stac/lib
RUN make

WORKDIR /opt/lite-stac/anotebooks
CMD ["/bin/ls"]
