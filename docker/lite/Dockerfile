FROM ubuntu:18.04

RUN apt-get update && apt-get install -y git && apt-get install -y make &&  apt-get -y install sudo && \
	useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo && \
	apt-get install -y software-properties-common

USER root
CMD /bin/bash


RUN mkdir -p /opt 
WORKDIR /opt

RUN git clone https://github.com/tonybutzer/lite-stac

WORKDIR /opt/lite-stac/pkg
RUN make

WORKDIR /opt/lite-stac/lib
RUN make
