FROM debian:buster


RUN   apt-get -y update && apt-get install -y redis-server

EXPOSE      6379

ENTRYPOINT  ["/usr/bin/redis-server"]