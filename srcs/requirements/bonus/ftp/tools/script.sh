#!/bin/sh
useradd -m ftpuser \
    && echo $FTP_USER:$FTP_PASS | chpasswd \
    && chown -R $FTP_USER:$FTP_USER /home/ftpuser/wordpress \
    && mkdir /home/ftpuser/empty \
    && chown -R $FTP_USER:$FTP_USER /home/ftpuser/empty


vsftpd