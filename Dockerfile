FROM php:8.2
ENV DEBIAN_FRONTEND=noninteractive \
    DATABASE_NAME=root \
    DATABASE_USERNAME=root \
    DATABASE_PASSWORD=V067YDAgM2obFUEO1UsaH08rUNiGRYIS \
    DATABASE_PREFIX=dryn_ \
    DATABASE_HOST=ex99ej.stackhero-network.com \
    DATABASE_PORT=3306
WORKDIR /var/www/html
RUN chown -R www-data:www-data ./
COPY --chown=www-data:www-data . .
RUN if test -f 'composer.json'; then  composer install; fi