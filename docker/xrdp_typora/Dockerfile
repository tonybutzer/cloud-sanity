FROM rattydave/docker-ubuntu-xrdp-mate-custom:19.04
MAINTAINER Tony Butzer

RUN apt-get update &&\
	apt-get install -y software-properties-common\
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE\
	&& add-apt-repository 'deb http://typora.io linux/'\
	&& apt-get update \
	&& apt-get install -y typora

COPY createusers.txt /root/


#locales
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 

# Called when the Docker image is started in the container`

WORKDIR /opt




