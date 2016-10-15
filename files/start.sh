#!/bin/sh
sed -i "s/SERVERNAME/${SERVERNAME}/g" /etc/nginx/sites-enabled/web
sed -i "s/SSLCERTIFICATE/${SSLCERTIFICATE}/g" /etc/nginx/sites-enabled/web
sed -i "s/SSLCERTIFICATEKEY/${SSLCERTIFICATEKEY}/g" /etc/nginx/sites-enabled/web
php-fpm -D
nginx -c /etc/nginx/nginx.conf
