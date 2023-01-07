FROM debian:buster

RUN apt update -y \
&& apt install mariadb-server -y

COPY tools/ tools/

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN chmod 777 tools/start.sh

EXPOSE 3306

CMD ["tools/start.sh"]
