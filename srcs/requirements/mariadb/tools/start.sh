#!/bin/bash

service mysql start
mysql -e "CREATE DATABASE ${DB_NAME};"
mysql -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';"
mysql -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';"
mysql -e "FLUSH PRIVILEGES;"
# mysql -e "ALTER USER '${ADMIN_USER}'@'%' IDENTIFIED BY '${DB_PASS}'"

service mysql start

mysqld