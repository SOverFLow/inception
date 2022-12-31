#!/bin/sh

wp core download --allow-root

wp config create --dbname=$DB_NAME \
    --dbuser=$DB_USER --dbpass=$DB_PASS \
    --dbhost=$DB_HOST --allow-root


wp core install --url=$IP \
 --title=$SITE_TITLE \
 --admin_user=$ADMIN_USER \
 --admin_password=$ADMIN_PASS \
 --admin_email=$ADMIN_EMAIL \
 --allow-root
 

wp plugin install redis-cache --activate --allow-root
wp config set WP_REDIS_PORT "6379" --allow-root
wp config set WP_REDIS_HOST "redis" --allow-root
wp redis enable --allow-root

php-fpm7.3 -R -F