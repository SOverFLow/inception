FROM debian:buster

RUN apt-get update -y \
   && apt-get install wget tar -y

RUN wget https://github.com/portainer/portainer/releases/download/2.16.2/portainer-2.16.2-linux-amd64.tar.gz

RUN  tar xvzf /portainer-2.16.2-linux-amd64.tar.gz

EXPOSE 9000

CMD ["/portainer/portainer"]