FROM php:8.3-apache

# System packages + PHP extensions
RUN apt-get update && apt-get install -y \
    libzip-dev zip unzip curl \
    libmagickwand-dev --no-install-recommends \
    && docker-php-ext-install mysqli pdo pdo_mysql bcmath gd zip \
    && pecl install imagick \
    && docker-php-ext-enable imagick

# Enable Apache rewrite
RUN a2enmod rewrite

# Copy project files
COPY --chown=www-data:www-data piprapay/ /var/www/html/

WORKDIR /var/www/html

EXPOSE 80
