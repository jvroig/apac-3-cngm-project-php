FROM php:7.4-apache
WORKDIR /var/www/html

COPY index.php index.php
COPY ./app/ app
COPY ports.conf /etc/apache2/ports.conf
COPY 000-default.conf /etc/apache2/sites-enabled/000-default.conf

EXPOSE 8080
USER www-data