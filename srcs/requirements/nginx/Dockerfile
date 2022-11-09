FROM debian:buster

RUN apt-get -y update \
    && apt-get -y install nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt update && apt install openssl \
    && openssl req -x509 -nodes \
    -days 365 \
    -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" \
    -addext "subjectAltName=DNS:mydomain.com" \
    -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt;

COPY default.conf /etc/nginx/sites-available/default.conf

EXPOSE 443
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
