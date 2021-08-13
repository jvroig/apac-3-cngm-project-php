FROM webdevops/php-nginx
WORKDIR /var/www/html

COPY index.php index.php
COPY app/ app
EXPOSE 80




