FROM debian:buster

RUN apt -y update \
    && apt -y install vsftpd

RUN useradd -m ftpuser \
    && echo "ftpuser:password" | chpasswd

COPY conf/vsftpd.conf /etc/vsftpd.conf


EXPOSE 21

CMD [ "/usr/sbin/vsftpd" ]