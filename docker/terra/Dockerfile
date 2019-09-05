FROM ubuntu

WORKDIR /home

FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
  && rm -rf /var/lib/apt/lists/*

RUN wget --quiet https://releases.hashicorp.com/terraform/0.12.8/terraform_0.12.8_linux_amd64.zip \
  && unzip terraform_0.12.8_linux_amd64.zip \
  && mv terraform /usr/bin \
  && rm terraform_0.12.8_linux_amd64.zip

RUN groupadd -r -g 1000 ubuntu && useradd -r -u 1000 -g ubuntu ubuntu


USER ubuntu
