FROM php:7.4-apache
WORKDIR /var/www/html

COPY index.php index.php
COPY app/ app
EXPOSE 80




