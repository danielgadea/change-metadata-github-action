# Base image
FROM alpine:latest

# installes required packages for our script
RUN	apk update && \
    apk upgrade && \
    apk add libimage-exiftool-perl && \
    apk add perl-doc


# Copies your code file  repository to the filesystem
COPY entrypoint.sh /entrypoint.sh

# change permission to execute the script and
RUN chmod +x /entrypoint.sh

# file to execute when the docker container starts up
ENTRYPOINT ["/entrypoint.sh"]
