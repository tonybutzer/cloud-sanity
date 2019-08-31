Image= tbutzer/s3fs

build:
	docker build -t ${Image} .


run:
	docker run -it --cap-add SYS_ADMIN --device /dev/fuse ${Image} /bin/sh
