FROM debian:buster

RUN apt-get -y update \
    && apt-get -y install nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY default.conf /etc/nginx/sites-available/default.conf

EXPOSE 443
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
