FROM alpine:3.10

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update ca-certificates openssl nginx nginx-mod-http-headers-more &&\
    apk add --update-cache --repository http://dl-3.alpinelinux.org/alpine/v3.10/community/ php7 php7-fpm php7-xml php7-json php7-zlib php7-dom php7-phar php7-curl php7-xmlrpc php7-soap php7-openssl php7-mbstring php7-session php7-mysqli php7-mysqlnd &&\
    mkdir /web &&\
    rm -rf /var/cache/apk/*                                                                                

COPY files/etc/php7 /etc/php7
COPY files/etc/nginx /etc/nginx
COPY files/start.sh /start.sh

RUN chown -R nginx:www-data /web &&\
    chown -R nginx /var/lib/nginx &&\
    chmod +x /start.sh

CMD ["/start.sh"]
