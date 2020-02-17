FROM ubuntu:latest
MAINTAINER sridhar mandhadi <sridharmandhadi@gmail.com>

RUN apt-get update
RUN apt-get install httpd

ADD . /var/ww/html
