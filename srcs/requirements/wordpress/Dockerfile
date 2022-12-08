FROM debian:buster

RUN apt-get -y update \
    && apt-get install curl php php-fpm -y \
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

EXPOSE 9000

CMD ["wp"]
