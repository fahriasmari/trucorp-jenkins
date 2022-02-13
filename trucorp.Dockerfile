FROM php:7.4.2-apache

RUN apt-get update
RUN apt-get install acl

RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN a2enmod rewrite
RUN service apache2 restart

WORKDIR /var/www/html

COPY ./index.php ./
COPY ./count.php ./

RUN chown -R www-data /var/www/html
RUN chgrp -R www-data /var/www/html
RUN setfacl -R -m o:r /var/www/html

EXPOSE 80