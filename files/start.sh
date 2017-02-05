#!/bin/sh
sed -i "s/SERVICENAME/${SERVICENAME}/g" /etc/nginx/sites-enabled/web
php-fpm -D
nginx -c /etc/nginx/nginx.conf
