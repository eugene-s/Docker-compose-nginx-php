FROM php:5-fpm-alpine

RUN apk --update --repository=http://dl-4.alpinelinux.org/alpine/edge/community/ add \
    libmcrypt-dev \
    php5-xdebug \
    && docker-php-ext-install mcrypt mysqli \
    && docker-php-ext-enable mcrypt mysqli \
    && rm /var/cache/apk/*

EXPOSE 9000
EXPOSE 9001

CMD ["php-fpm"]
