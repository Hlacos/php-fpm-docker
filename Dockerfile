FROM php:7.2-fpm

#EXPOSE 9000

RUN apt-get update && apt-get install -y libcurl4-openssl-dev \
    pkg-config \
    libssl-dev

RUN pecl install mongodb
RUN echo "extension=mongodb.so" > /usr/local/etc/php/php.ini

#RUN mkdir /usr/local/log
#RUN touch /usr/local/log/www.access.log