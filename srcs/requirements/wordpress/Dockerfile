FROM debian:buster

WORKDIR /var/www/html

RUN apt -y update \
    && apt install curl php php-mysql php-fpm -y \
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar \
    && mkdir /run/php/

RUN mv wp-cli.phar /usr/local/bin/wp

RUN wp core download --allow-root

COPY conf/www.conf /etc/php/7.3/fpm/pool.d
EXPOSE 9000

CMD ["php-fpm7.3", "-R", "-F"]
