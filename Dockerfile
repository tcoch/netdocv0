FROM php:8.1 AS php_base_image

FROM php_base_image AS tcoch_netdoc

# Install packages needed
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    libzip-dev

# Install zip extension
RUN docker-php-ext-install zip
RUN docker-php-ext-enable zip

# Install composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# Install XDEBUG
RUN pecl install xdebug && docker-php-ext-enable xdebug
RUN docker-php-source delete
ENV XDEBUG_MODE coverage

# Set working directory
WORKDIR /app

# Make container always running
CMD [ "tail", "-f", "/dev/null" ]


