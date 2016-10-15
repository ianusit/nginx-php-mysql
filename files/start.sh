#!/bin/sh
sed -i "s/SERVERNAME/${SERVERNAME}/g" /etc/nginx/sites-enabled/web
sed -i "s/SSLCERT/${SSLCERT}/g" /etc/nginx/sites-enabled/web
sed -i "s/SSLKEY/${SSLKEY}/g" /etc/nginx/sites-enabled/web
php-fpm -D
nginx -c /etc/nginx/nginx.conf
