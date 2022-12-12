FROM debian:buster

RUN apt -y update \
    && apt -y install nginx

RUN apt update && apt install openssl \
    && openssl req -x509 -nodes \
    -days 365 \
    -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" \
    -addext "subjectAltName=DNS:mydomain.com" \
    -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt;

COPY conf/default /etc/nginx/sites-enabled/

EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
