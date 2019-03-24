build:
	sudo docker build --tag tbutzer:xrdp_plus .

run:
	sudo docker run --name xplus \
           --privileged=true \
           -p 3389:3389 \
           -v /home/ubuntu/opt/cloud-sanity/docker/xrdp/createusers.txt:/root/createusers.txt \
           -v /home:/home \
           -dit --restart unless-stopped \
	   tbutzer:xrdp_plus1


stop:
	sudo docker kill xplus
	sudo docker rm xplus

