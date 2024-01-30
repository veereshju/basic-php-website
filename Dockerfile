FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive
#RUN sed -i 's/http:\/\/archive.ubuntu.com\/ubuntu\//https:\/\/archive.ubuntu.com\/ubuntu\//g' /etc/apt/sources.list
RUN sed -i 's/http:\/\/archive.ubuntu.com\//http:\/\/us.archive.ubuntu.com\//g' /etc/apt/sources.list
RUN apt-get update -y && apt-get install -y apache2
RUN apt-get install -y php libapache2-mod-php
ADD . /var/www/html/
EXPOSE 80
ENTRYPOINT apachectl -D FOREGROUND
