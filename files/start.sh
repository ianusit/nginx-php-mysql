#!/bin/sh
sed -i "s/SERVERNAME/${SERVERNAME}/g" /etc/nginx/sites-enabled/web
cp /etc/nginx/sites-enabled/web /etc/nginx/sites-available/web
php-fpm -D
nginx -c /etc/nginx/nginx.conf
