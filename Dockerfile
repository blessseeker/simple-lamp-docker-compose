FROM php:7.4-apache

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y apt-utils sendmail mariadb-client pngquant unzip zip libpng-dev libmcrypt-dev git libzip-dev zlib1g-dev \
    curl libicu-dev libxml2-dev libssl-dev libsqlite3-dev libsqlite3-0

RUN docker-php-ext-install mysqli bcmath gd intl xml pdo_mysql pdo_sqlite zip dom session opcache

RUN a2enmod rewrite