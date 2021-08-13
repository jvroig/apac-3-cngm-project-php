FROM quay.io/centos7/httpd-24-centos7
WORKDIR /var/www/html

COPY index.php index.php
COPY app/ app

RUN ["yum", "-y", "install", "php", "php-cli"]

EXPOSE 80





