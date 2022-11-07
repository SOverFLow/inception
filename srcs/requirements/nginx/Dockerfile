FROM debian:buster

MAINTAINER selhanda

RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf

ADD default.conf  /etc/nginx/sites-available/default.conf

EXPOSE 443
CMD ["nginx","-g","daemon off"]
