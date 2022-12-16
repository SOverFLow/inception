FROM debian:buster

WORKDIR /var/www/html

RUN apt -y update \
    && apt -y install git \
    && git clone "https://github.com/selhanda/myprotofolio.git"


EXPOSE 5000