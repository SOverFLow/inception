#!/bin/sh

wp config create --dbname=wordpresss --dbuser=wpuser --dbpass=Selhanda@123 --dbhost=mariadb --allow-root

php-fpm7.3 -R -F