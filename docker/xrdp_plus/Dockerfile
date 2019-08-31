FROM rattydave/docker-ubuntu-xrdp-mate-custom:19.04

ENV CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

RUN apt-get update &&\
	apt-get install -y awscli && \
	apt-get install -y ncview && \
	apt-get install -y gdal-bin &&\
	apt-get install -y default-jre && \
	apt-get install -y python3-pip

RUN apt install -y ristretto \
&& apt install -y kphotoalbum \
&& apt install -y mirage \
&& apt install -y gwenview\
&& apt install -y geeqie\
&& apt install -y eom\
&& apt install -y eog\
&& apt install -y gimp\
&& apt install -y nomacs



RUN pip3 install numpy

RUN pip3 install -U cython==0.28 && \
	pip3 install rio-viz

WORKDIR /opt




