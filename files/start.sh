#!/bin/sh
sed -i "s/SERVERNAME/${SERVERNAME}/g" /etc/nginx/sites-enabled/web
php-fpm -D
nginx -c /etc/nginx/nginx.conf
