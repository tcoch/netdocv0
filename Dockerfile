FROM php:8.1 AS php_base_image

FROM php_base_image AS tcoch_netdoc

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    zip \
    libzip-dev

RUN docker-php-ext-install zip
RUN docker-php-ext-enable zip

# Install composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

WORKDIR /app

CMD [ "tail", "-f", "/dev/null" ]


