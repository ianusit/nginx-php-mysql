FROM alpine:3.4

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update nginx php5-fpm php5 php5-xml php5-mysql php5-json php5-zlib php5-dom php5-phar php5-curl &&\
    mkdir -p /tmp/nginx/client-body &&\
    mkdir /web &&\
    mkdir /run/nginx/ &&\
    rm -rf /var/cache/apk/*

COPY files/etc/php /etc/php5
COPY files/etc/nginx /etc/nginx
COPY files/start.sh /start.sh

RUN chown -R nginx:www-data /web &&\
    chown -R nginx /var/lib/nginx &&\
    chown -R nginx /run/nginx/ &&\
    chmod +x /start.sh

CMD ["/start.sh"]
