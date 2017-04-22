#!/bin/bash
# Bash script written by Saad Ismail - me@saadismail.net

echo "Please enter root user MySQL password!"
read rootpasswd
echo "Please enter the NAME of the new WordPress database! (example: database1)"
read dbname
echo "Please enter the WordPress database CHARACTER SET! (example: latin1, utf8, ...)"
read charset
#echo "Creating new WordPress database..."
#mysql -uroot -p${rootpasswd} -e "CREATE DATABASE ${dbname} /*\!40100 DEFAULT CHARACTER SET ${charset} */;"
#echo "Database successfully created!"
#echo "Showing existing databases..."
#mysql -uroot -p${rootpasswd} -e "show databases;"

echo ""
echo "Please enter the host of the new WordPress database user! (example: % or localhost % ip_address)"
read host

echo "Please enter the NAME of the new WordPress database user! (example: user1)"
read username

echo "Please enter the PASSWORD for the new WordPress database user!"
read userpass

echo "Creating new user..."
mysql -uroot -p${rootpasswd} -e "CREATE USER ${username}@${host} IDENTIFIED BY '${userpass}';"
echo "User successfully created!"
echo ""
echo "Granting ALL privileges on ${dbname} to ${username}!"
mysql -uroot -p${rootpasswd} -e "GRANT ALL PRIVILEGES ON ${dbname}.* TO '${username}'@'${host}';"
mysql -uroot -p${rootpasswd} -e "FLUSH PRIVILEGES;"
echo "You're good now :)"

