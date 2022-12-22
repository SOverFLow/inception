FROM debian:buster


RUN apt-get update \
    && apt-get install -y \
    && apt -y install nginx \
    && apt -y install wget

WORKDIR /var/www/html

RUN wget https://www.adminer.org/latest.php -O /var/www/html/index.php

RUN chown -R www-data:www-data /var/www/html

EXPOSE 5000

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
