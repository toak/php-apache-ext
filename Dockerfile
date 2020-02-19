FROM php:apache

RUN a2enmod rewrite

RUN apt-get update && apt-get install -y \
        zlib1g-dev \
        libxml2-dev \
        libzip-dev \

RUN docker-php-ext-install fileinfo
RUN docker-php-ext-install iconv
RUN docker-php-ext-install zip
RUN docker-php-ext-install bcmath
