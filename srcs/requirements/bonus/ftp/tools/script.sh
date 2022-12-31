#!/bin/sh
useradd -m ftpuser \
    && echo "ftpuser:password" | chpasswd \
    && usermod -g www-data ftpuser


vsftpd