FROM php:8.1-rc-fpm

RUN apt-get update && apt-get install -y libpq-dev libicu-dev \
    && docker-php-ext-install pdo_mysql \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app
