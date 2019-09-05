Image='tbutzer/sphinx'

build:
	sudo docker build --tag ${Image} .

run:
	sudo docker run --name some-sphinx \
           -v `pwd`:/home \
           -dit --restart unless-stopped \
	   ${Image}

bash:
	sudo docker run -it --name some-sphinx \
           -v `pwd`:/home \
	   ${Image} bash

push:
	docker login -u tbutzer
	docker push ${Image}


stop:
	sudo docker kill some-sphinx
	sudo docker rm some-sphinx


gnufix:
	sudo apt install gnupg2 pass

