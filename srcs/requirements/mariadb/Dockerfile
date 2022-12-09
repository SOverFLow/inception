FROM debian:buster

RUN apt update \
    && apt install -y mariadb-server mariadb-client

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/

COPY mariadb.sql tools/

RUN service mysql start && mariadb < tools/mariadb.sql

EXPOSE 3306

CMD ["mysqld"]
