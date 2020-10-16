FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install nginx -y
RUN service nginx start
