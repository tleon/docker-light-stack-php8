# ./docker/php/Dockerfile
FROM php:8.1-fpm

RUN docker-php-ext-install pdo_mysql

RUN pecl install apcu

RUN apt-get update && \
apt-get install -y \
zlib1g-dev libzip-dev

RUN docker-php-ext-install zip
RUN docker-php-ext-enable apcu

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --filename=composer \
    && php -r "unlink('composer-setup.php');" \
    && mv composer /usr/local/bin/composer

WORKDIR /usr/src/app

RUN chown -R www-data:www-data /usr/src/app

RUN PATH=$PATH:/usr/src/apps/vendor/bin:bin

USER www-data