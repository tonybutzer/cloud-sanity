up:
	sudo docker-compose up -d

down:
	sudo docker-compose down

build:
	sudo docker build --tag tbutzer:lite .

shell:
	sudo docker run --rm -it \
		-v /home/ubuntu:/data \
		--name lite tbutzer:lite /bin/bash
