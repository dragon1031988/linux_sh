#!/bin/bash
#http://www.pseudoaj.com/2016/07/pseudoajtutorial1-laravel-52-on-centos.html
#title           :bootstrap.sh
#description     :This script will install laravel on PHP 7
#author               :Ajay Krishna Teja Kavuri
#date            :20160718
#version         :0.1
#==============================================================================
#Install vim
yum -y install vim
echo -e "----Added RPM's----\n\n"
#Formal update for no reason
yum -y update
#Setup Yum messages
rpm -Uvh http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
yum -y update
echo -e "----Added RPM's----\n\n"
# Create user and group for nginx
adduser nginx
groupadd nginx
echo -e "----Created user nginx and group nginx----\n\n"
# Install nginx
yum -y install nginx
echo -e "----Installed Nginx----\n\n"
# Install MySQL
yum -y install mysql-connector-java mysql-connector-odbc mysql-devel mysql-lib mysql-server
echo -e "----Installed MySQL----\n\n"
# Install MySQL mods
yum -y install mod_auth_kerb mod_auth_mysql mod_authz_ldap mod_evasive mod_perl mod_security mod_ssl mod_wsgi
echo -e "----Installed Auth Plugins for MySQL----\n\n"
# Install PHP 7
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
yum -y install php70w php70w-bcmath php70w-cli php70w-common php70w-gd php70w-ldap php70w-mbstring php70w-mcrypt php70w-mysql php70w-odbc php70w-pdo php70w-pear php70w-pear-Benchmark php70w-pecl-apc php70w-pecl-imagick php70w-pecl-memcache php70w-soap php70w-xml php70w-xmlrpc
yum -y install php70w-fpm php70w-opcache
echo -e "----Installed PHP 7----\n\n"
# Start and set php-fpm
sudo systemctl start nginx
sudo systemctl enable nginx
echo -e "----Started Apache----\n\n"
# Start and set php
sudo systemctl start php-fpm
sudo systemctl enable php-fpm
echo -e "----Started Php-fpm----\n\n"
# Start and set mysql
sudo systemctl start mysql
sudo systemctl enable mysql
echo -e "----Started mysql----\n\n"
# Install composer
curl -sS https://getcomposer.org/installer | php
sudo chmod +x composer.phar
mv composer.phar /usr/bin/composer
echo -e "----Installed composer----\n\n"