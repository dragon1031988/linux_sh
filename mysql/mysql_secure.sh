#!/bin/bash
# Bash script written by Saad Ismail - me@saadismail.net

#call mysql secure instalation
#/usr/bin/mysql_secure_installation

echo "Please enter root pass!"
read rootpasswd

echo "Please enter  new user!"
read user

PASSWDDB="$(openssl rand -base64 12)"

mysql -uroot -p${rootpasswd} -e "CREATE USER '${user}'@'%' IDENTIFIED BY '${PASSWDDB}';"
mysql -uroot -p${rootpasswd} -e "GRANT ALL PRIVILEGES ON *.* TO '${user}'@'%' WITH GRANT OPTION;"
mysql -uroot -p${rootpasswd} -e "FLUSH PRIVILEGES;"

echo $PASSWDDB;