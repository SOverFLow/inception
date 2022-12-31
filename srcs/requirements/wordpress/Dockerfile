FROM debian:buster

WORKDIR /var/www/html

RUN apt update -y \
    && apt install curl php php-mysql php-fpm mariadb-client -y \
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar \
    && mkdir /run/php/

RUN mv wp-cli.phar /usr/local/bin/wp

COPY tools/ /bin

RUN chmod +x /bin/start.sh

COPY conf/www.conf /etc/php/7.3/fpm/pool.d

EXPOSE 9000

CMD ["start.sh"]
