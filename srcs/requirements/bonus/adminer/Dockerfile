FROM debian:buster


RUN apt-get update \
    && apt-get install -y \
    && apt install php php-mysql php-fpm mariadb-client -y \
    && apt -y install nginx \
    && apt -y install wget \
    && mkdir /run/php/

WORKDIR /var/www/html

RUN wget https://www.adminer.org/latest.php -O /var/www/html/index.php

RUN chown -R www-data:www-data /var/www/html

COPY conf/www.conf /etc/php/7.3/fpm/pool.d

COPY ./tools/script.sh /bin

EXPOSE 9000

CMD ["script.sh"]
