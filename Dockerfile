FROM alpine:3.3

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update nginx php-fpm php php-xml php-mysql php-json php-zlib php-dom php-phar php-curl &&\
    mkdir -p /tmp/nginx/client-body &&\
    mkdir /web &&\
    rm -rf /var/cache/apk/* 

COPY files/etc/php /etc/php
COPY files/start.sh /start.sh

RUN chown -R nginx:www-data /web &&\
    chown -R nginx /var/lib/nginx &&\
    chmod +x /start.sh

CMD ["/start.sh"]
