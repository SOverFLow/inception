FROM debian:buster

RUN apt -y update \
    && apt -y install vsftpd

COPY ./tools/script.sh /bin

COPY conf/vsftpd.conf /etc/vsftpd.conf

RUN chmod 777 /bin/script.sh

EXPOSE 21

CMD [ "script.sh" ]