rm -rf /etc/nginx/sites-available/
rm -rf /etc/nginx/sites-enabled/

sudo cp -rf server/nginx/* /etc/nginx/
sudo ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/

echo "Begin restart php-fpm"
systemctl stop php-fpm
systemctl start php-fpm

echo "Begin restart nginx"
systemctl stop nginx
systemctl start nginx