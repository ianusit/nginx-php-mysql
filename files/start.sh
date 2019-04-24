#!/bin/sh
sed -i "s/SERVICENAME/${SERVICENAME}/g" /etc/nginx/sites-enabled/web
php-fpm7 -D
nginx -c /etc/nginx/nginx.conf
