FROM rattydave/docker-ubuntu-xrdp-mate-custom:19.04

RUN apt-get update &&\
	apt-get install -y ncview && \
	apt-get install -y gdal-bin &&\
	apt-get install -y default-jre

WORKDIR /opt
RUN wget https://www.unidata.ucar.edu/downloads/idv/latest/ftp/idv_5_5_linux64_installer.sh
	# bash idv_5_5_linux64_installer.sh




