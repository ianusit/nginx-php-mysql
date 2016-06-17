FROM alpine:3.4

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update nginx php7-fpm php7 php7-xml php7-mysql php7-json php7-zlib php7-dom php7-phar php7-curl &&\
    mkdir -p /tmp/nginx/client-body &&\
    mkdir /web &&\
    rm -rf /var/cache/apk/* 

COPY files/etc/php /etc/php
COPY files/start.sh /start.sh

RUN chown -R nginx:www-data /web &&\
    chown -R nginx /var/lib/nginx &&\
    chmod +x /start.sh

CMD ["/start.sh"]
