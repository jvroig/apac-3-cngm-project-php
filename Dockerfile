FROM quay.io/centos/centos
USER root
WORKDIR /var/www/html

COPY index.php index.php
COPY app/ app

RUN ["yum", "-y", "install", "php", "php-cli"]
RUN ["systemctl", "start", "httpd"]
RUN ["systemctl", "enable", "httpd"]
RUN ["systemctl", "status", "httpd"]

EXPOSE 80
