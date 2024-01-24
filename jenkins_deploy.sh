#!/bin/bash
sudo mkdir /var/www/html/bookalbum
sudo cp -rf * /var/www/html/bookalbum/.
#echo "DocumentRoot /var/www/html/bookalbum" | sudo tee -a  /etc/apache2/sites-available/000-default.conf
#sudo sed -i 's|DocumentRoot /var/www/html|DocumentRoot /var/www/html/bookalbum|' /etc/apache2/sites-available/000-default.conf
sudo sed -E -i 's|DocumentRoot[[:space:]]+/var/www/html/[^[:space:]]*|DocumentRoot /var/www/html/bookalbum|' /etc/apache2/sites-available/000-default.conf
sudo systemctl restart apache2
