FROM debian:buster

RUN apt-get update
RUN apt-get install -y -q mariadb-server mariadb-client

EXPOSE 3306

CMD ["mysqld"]
