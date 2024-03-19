FROM php:8.0-fpm
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev \
    && docker-php-ext-configure gd --with-jpeg \
    && docker-php-ext-install gd pdo pdo_mysql
WORKDIR /var/www
COPY . /var/www
RUN chown -R www-data:www-data /var/www
