FROM php:8.1-rc-cli

RUN apt-get update && apt-get install -y unzip git \
    && docker-php-ext-install pdo_mysql \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- \
    --install-dir=/bin \
    --filename=composer --quiet

ENV COMPOSER_ALLOW_SUPERUSER 1

WORKDIR /app
