FROM php:7-fpm-alpine

# Install xdebug
RUN apk --update --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/ add php7-xdebug && \
    echo -e zend_extension=$(find / -name xdebug.so) > /usr/local/etc/php/conf.d/xdebug.ini && \
    echo -e "#!/usr/bin/env sh\n/usr/local/bin/php /var/www/composer.phar \$*" > /usr/local/bin/composer && \
    echo -e "#!/usr/bin/env sh\n/usr/local/bin/php /var/www/artisan \$*" > /usr/local/bin/artisan && \
    chmod a+x /usr/local/bin/composer /usr/local/bin/artisan && \
    rm -rf /var/cache/apk/* /tmp/*

EXPOSE 9000