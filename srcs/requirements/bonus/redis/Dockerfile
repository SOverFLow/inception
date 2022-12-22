FROM debian:buster

RUN   apt-get -y update && apt-get install -y redis-server

CMD  ["/usr/bin/redis-server", "--protected-mode", "no"]