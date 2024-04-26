# Use the official Ubuntu 22.04 image as the base image
FROM ubuntu:22.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
# Set the ServerName directive globally to suppress AH00558 warning
# Set working directory
WORKDIR /var/www/html

# Change ownership
RUN chown -R www-data:www-data ./

# Copy application files
COPY --chown=www-data:www-data . .

# Update package lists and install necessary packages
RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" apt-get install -y \
    php \
    libapache2-mod-php \
    php-dev \
    php-bcmath \
    php-intl \
    php-soap \
    php-zip \
    php-curl \
    php-mbstring \
    php-mysql \
    php-gd \
    php-xml \
    apache2 \
    unzip


# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Run composer install if composer.json is present
RUN if [ -f 'composer.json' ]; then composer update --ignore-platform-req=ext-dom; fi

EXPOSE 8080
# Start Apache in the foreground
#CMD ["apache2ctl", "-D", "FOREGROUND"]
