FROM python

WORKDIR /home

RUN apt-get update && apt-get install -y python-sphinx


RUN pip3 install recommonmark \
	&& pip3 install sphinx_rtd_theme

RUN groupadd -r -g 1000 ubuntu && useradd -r -u 1000 -g ubuntu ubuntu


USER ubuntu
