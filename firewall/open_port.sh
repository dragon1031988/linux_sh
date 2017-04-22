# open service port mysql
sudo firewall-cmd --zone=public --add-service=mysql --permanent
# open service port nginx
sudo firewall-cmd --zone=public --add-service=http --permanent
sudo firewall-cmd --zone=public --add-service=https --permanent
# restart network and firewall
sudo systemctl restart network.service
sudo systemctl restart firewalld.service
