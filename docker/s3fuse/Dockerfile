FROM alpine:3.5
# build stage 1: compile s3fs

# the following ENV need to be present
ENV IAM_ROLE=none
ENV MOUNT_POINT=/var/s3
VOLUME /var/s3

ARG S3FS_VERSION=v1.80

RUN apk --update add fuse alpine-sdk automake autoconf libxml2-dev fuse-dev curl-dev git bash;
RUN git clone https://github.com/s3fs-fuse/s3fs-fuse.git; \
 cd s3fs-fuse; \
 git checkout tags/${S3FS_VERSION}; \
 ./autogen.sh; \
 ./configure --prefix=/usr; \
 make; \
 make install

# FROM alpine:latest
# build stage 2: install s3fs and entrypoint.sh in a clean base.

# COPY --from=0 /usr/bin/s3fs /usr/bin


