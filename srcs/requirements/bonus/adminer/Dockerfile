FROM debian:buster

WORKDIR /var/www/html

RUN apt-get update \
    && apt-get install -y \
    # apache2 \
    # libapache2-mod-php7.4 \
    # php7.4-cli \
    # php7.4-common \
    # php7.4-mysql \
    wget 

RUN wget https://www.adminer.org/latest.php -O /var/www/html/index.php

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
