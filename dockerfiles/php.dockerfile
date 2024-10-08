FROM php:8.1-fpm-alpine

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

# linux command for file access
RUN chown -R www-data:www-data /var/www/html   