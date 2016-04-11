#!/bin/sh
php-fpm -D
nginx -c /etc/nginx/nginx.conf
