FROM debian:buster

RUN apt update -y \
&& apt install mariadb-server -y

COPY tools/ tools/
ARG DB_NAME DB_USER DB_PASS ADMIN_USER
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN chmod 777 tools/start.sh

RUN ./tools/start.sh

EXPOSE 3306

CMD ["mysqld"]
