FROM alpine

MAINTAINER sunder.narayanaswamy@gmail.com

RUN apk --no-cache update && \
    apk --no-cache add bash python3 emacs && \
    pip3 --no-cache-dir install awscli aws-shell && \
    rm -rf /var/cache/apk/*

WORKDIR /home

CMD bash -c "aws-shell"
