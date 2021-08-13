FROM quay.io/centos/centos
USER root
WORKDIR /var/www/html

COPY index.php index.php
COPY app/ app

RUN ["yum", "-y", "install", "php", "php-cli"]

EXPOSE 80
