FROM alpine:3.4
MAINTAINER Ahmed Elsabbahy <elsabbahyahmed@yahoo.com>

# Install goss
RUN apk add --no-cache --virtual=goss-dependencies curl ca-certificates && \
    curl -L https://github.com/aelsabbahy/goss/releases/download/v0.1.10/goss-linux-amd64 > /usr/local/bin/goss && \ 
    chmod +rx /usr/local/bin/goss && \
    apk del goss-dependencies

ENTRYPOINT ["goss", "-g", "/goss/goss.yaml"]
