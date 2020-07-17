# FROM alpine:3.12
FROM ubuntu:latest

WORKDIR /usr/src/app/
ADD . /usr/src/app/

RUN apt-get update \
    && apt-get install -y python3-pip python3-dev \
    && cd /usr/local/bin \
    && ln -s /usr/bin/python3 python \
    && pip3 install --upgrade pip