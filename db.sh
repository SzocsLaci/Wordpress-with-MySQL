#!/bin/bash
sudo apt update
sudo apt-get install mysql-server php-mysql

sudo mysql -u root 
CREATE DATABASE wordpress;
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER
 ON wordpress.* 
 TO wordpress@'%' 
 IDENTIFIED BY 'wordpress';
FLUSH PRIVILEGES;
quit

#Change it
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
"bind-address 0.0.0.0"

sudo systemctl restart mysql

