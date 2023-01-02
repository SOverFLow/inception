FROM debian:buster

RUN apt -y update \
    && apt -y install nginx \
    && apt -y install git

WORKDIR /var/www/html

RUN git clone "https://github.com/selhanda/myprotofolio.git" \
    && cp -r myprotofolio/* . \
    && apt install curl -y

EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]