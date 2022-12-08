FROM debian:buster

RUN apt-get -y update \
    && apt-get install curl php php-mysql php-fpm -y \
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar
RUN service php7.3-fpm stop

RUN mv wp-cli.phar /usr/local/bin/wp

COPY conf/www.conf /etc/php/7.3/fpm/pool.d
EXPOSE 9000

CMD ["php-fpm7.3", "-R", "-F"]
