FROM python

WORKDIR /home

RUN apt-get update && apt-get install -y python-sphinx


RUN pip3 install recommonmark \
	&& pip3 install sphinx_rtd_theme \
	&& pip3 install sphinx-markdown-tables

# RUN groupadd -r -g 1000 ubuntu && useradd -r -u 1000 -g ubuntu ubuntu
# USER ubuntu
RUN groupadd -r -g 7428 rhassan && useradd -r -u 7428 -g rhassan rhassan
RUN groupadd -r -g 1000 ubuntu && useradd -r -u 1000 -g ubuntu ubuntu
#USER rhassan
USER ubuntu
