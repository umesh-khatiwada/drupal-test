FROM php:8.2
ENV DEBIAN_FRONTEND=noninteractive \
    DATABASE_NAME=mariadb \
    DATABASE_USERNAME=mariadb \
    DATABASE_PASSWORD=test123 \
    DATABASE_PREFIX=dryn_ \
    DATABASE_HOST=zerone-addon-10364-101-mariadb.zerone-4950-10364.svc.cluster.local \
    DATABASE_PORT=3306
WORKDIR /var/www/html
RUN chown -R www-data:www-data ./
COPY --chown=www-data:www-data . .
RUN if test -f 'composer.json'; then  composer install; fi