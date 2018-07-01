FROM php:apache

RUN a2enmod rewrite

RUN docker-php-ext-install mysqli

RUN docker-php-ext-install bcmath

RUN apt-get update -y && \
    apt-get install -y \
        git
