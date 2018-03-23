FROM gliderlabs/alpine:3.2
# MAINTAINER Anthony Rawlins <anthony.rawlins@unimelb.edu.au>
RUN apk add --update python3 py-pip && pip3 install mkdocs && rm -rf /var/cache/apk/*
RUN mkdir /documents
COPY documents /documents
WORKDIR /documents
EXPOSE 8001
ENTRYPOINT ["mkdocs"]
