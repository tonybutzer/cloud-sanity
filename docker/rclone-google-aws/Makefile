Image='tbutzer/rclone-g-a'
# rclone image docker for aws and google drive

build:
	docker build --tag ${Image} .

shell:
	docker run --rm -it \
		-v /data3/butzer:/data \
		--name rcloner tbutzer/rclone /bin/bash
