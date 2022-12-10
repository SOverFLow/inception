FROM debian:buster

RUN apt update \
    && apt install mariadb-server -y

COPY tools/ tools/

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN service mysql start && mariadb < tools/mariadb.sql

EXPOSE 3306

CMD ["mysqld"]
