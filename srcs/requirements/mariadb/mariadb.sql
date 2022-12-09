create database wordpresss;
create user "wpuser"@"%" identified by "Selhanda@123";
grant all privileges on wordpresss.* to 'wpuser'@'%';
flush privileges;