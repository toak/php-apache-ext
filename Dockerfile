FROM php:apache

RUN a2enmod rewrite
RUN a2enmod mbstring

RUN docker-php-ext-install fileinfo
RUN docker-php-ext-install iconv
RUN docker-php-ext-install zip
RUN docker-php-ext-install bcmath
