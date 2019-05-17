
IMAGE=tbutzer/xrdp_typora

build:
	sudo docker build --tag $(IMAGE) .

run:
	sudo docker run --name xplus \
           --privileged=true \
           -p 3389:3389 \
           -v /home/ubuntu/opt/cloud-sanity/docker/xrdp/createusers.txt:/root/createusers.txt \
           -v /home:/home \
           -dit --restart unless-stopped \
	   $(IMAGE)


stop:
	sudo docker kill xplus
	sudo docker rm xplus

publish: ## Send this image to docker hub!
	sudo docker login -u tbutzer
	sudo docker push $(IMAGE)

