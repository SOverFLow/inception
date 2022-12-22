create database wordpress;
create user "wpuser"@"%" identified by "Selhanda@123";
grant all privileges on wordpress.* to 'wpuser'@'%';
flush privileges;
alter user 'root'@'localhost' identified by 'Selhanda@123'