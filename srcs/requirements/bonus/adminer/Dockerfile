FROM debian:buster

RUN apt-get update \
    && apt-get install -y \
    && apt install php php-mysql -y \
    && apt -y install wget 

WORKDIR /var/www/adminer

RUN wget https://www.adminer.org/latest.php -O /var/www/adminer/index.php

RUN chown -R www-data:www-data /var/www/adminer

COPY ./tools/script.sh /bin

EXPOSE 8000

CMD ["script.sh"]
