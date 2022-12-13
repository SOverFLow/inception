#!/bin/sh

wp config create --dbname=wordpresss \
    --dbuser=wpuser --dbpass=Selhanda@123 \
    --dbhost=mariadb --allow-root


wp core install --url="selhanda.42.fr" \
 --title="inception" \
 --admin_user="root" \
 --admin_password="Selhanda@123" \
 --admin_email="admin@email.com" \
 --allow-root

php-fpm7.3 -R -F