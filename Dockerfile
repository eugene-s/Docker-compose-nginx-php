FROM registry.gitlab.com/instandart/kherson-real-estate:php-fpm

ENV COMPOSER_CACHE_DIR=/tmp/composer_cache

COPY . /var/www

RUN cd /var/www && \
    php composer.phar install --no-dev && \
    php artisan vendor:publish && \
    php artisan optimize && \
    php artisan config:cache && \
    php artisan route:cache && \
    php artisan storage:link && \
    rm -rf /tmp/*

WORKDIR /var/www
