FROM php:apache

RUN a2enmod rewrite

RUN apt-get update -y && \
    apt-get install -y \
        git libc-client-dev libkrb5-dev libonig-dev zip

RUN docker-php-ext-configure imap --with-imap --with-imap-ssl --with-kerberos && \
    docker-php-ext-install imap && \
    docker-php-ext-install mbstring

RUN docker-php-ext-install mysqli
RUN docker-php-ext-install bcmath

RUN curl -s https://getcomposer.org/installer | php

RUN php composer.phar require hubspot/hubspot-php
RUN php composer.phar require ddeboer/imap
