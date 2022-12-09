FROM debian:buster

RUN apt update \
    && apt install -y mariadb-server mariadb-client

COPY 50-server.cnf /etc/mysql/mariadb.conf.d

COPY mariadb.sql /etc/

RUN mysql < /etc/mariadb.sql

EXPOSE 3306

CMD ["mysqld"]
