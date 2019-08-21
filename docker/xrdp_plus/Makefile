Image='tbutzer/xrdp_plus'

build:
	sudo docker build --tag ${Image} .

run:
	sudo docker run --name xplus \
           --privileged=true \
           -p 8389:3389 \
           -v /opt/cloud-sanity/docker/xrdp/createusers.txt:/root/createusers.txt \
           -v /home:/home \
           -dit --restart unless-stopped \
	   ${Image}

push:
	docker login -u tbutzer
	docker push ${Image}


stop:
	sudo docker kill xplus
	sudo docker rm xplus

