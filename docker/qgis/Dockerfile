FROM rattydave/docker-ubuntu-xrdp-mate-custom:19.04
MAINTAINER Tony Butzer

RUN apt-get update &&\
	apt-get install -y ncview && \
	apt-get install -y gdal-bin &&\
	apt-get install -y default-jre


ENV LANG C.UTF-8

RUN apt-get -y update
RUN apt-get install -y gnupg apt-transport-https ca-certificates

RUN echo "deb http://qgis.org/debian-nightly xenial main" >> /etc/apt/sources.list
RUN gpg --keyserver keyserver.ubuntu.com --recv CAEB3DC3BDF7FB45
RUN gpg --export --armor CAEB3DC3BDF7FB45 | apt-key add -
RUN apt-get update && \
    apt-get install -y qgis python-qgis qgis-provider-grass \
    locales locales-all && \
    rm -rf /var/lib/apt/lists/*
#--no-install-recommends

#locales
ENV LC_ALL fr_FR.UTF-8
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR.UTF-8

# Called when the Docker image is started in the container`

WORKDIR /opt
RUN wget https://www.unidata.ucar.edu/downloads/idv/latest/ftp/idv_5_5_linux64_installer.sh
	# bash idv_5_5_linux64_installer.sh




