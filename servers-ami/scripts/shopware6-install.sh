#!/bin/bash 

#==================================================================
#
# Script Name	: shopware6-install.sh                                                                                             
# Description	: Auto install of SHopware 6                                                            
# Args          :                                                                                           
# Author       	: kanchen Monnin (kanchen@mail.com)                                             
#
#==================================================================

echo '######## Install Apache ########'
sudo apt-get install -y apache2
sudo sudo systemctl enable apache2
sudo systemctl status apache2

echo '######## Install MariaDB ########'
sudo apt-get install mariadb-server
sudo mysql_secure_installation
sudo systemctl enable mariadb

echo '######## Install PHP7 ########'
apt-get install php7.0 php7.0-cli php7.0-common php7.0-mysql php7.0-curl php7.0-json php7.0-zip php7.0-gd php7.0-xml php7.0-mbstring php7.0-opcache

echo '######## Install Shopware CE ########'
mkdir /var/www/shopware && cd /var/www/shopware
wget https://codeload.github.com/shopware/shopware/zip/v5.6.7 -O shopware.zip
sudo unzip shopware.zip
sudo chown -R www-data:www-data /var/www/shopware/

echo '######## Configure the Database ########'
sudo mariadb -u root -p
CREATE DATABASE shopware; CREATE USER shopware@localhost IDENTIFIED BY 'password'; GRANT ALL PRIVILEGES ON shopware.* TO shopware@localhost; FLUSH PRIVILEGES;
exit

echo '######## Configure Apache ########'
cat <<EOF > /etc/apache2/sites-available/shopware.conf
<VirtualHost *:80>
 DocumentRoot /var/www/shopware
 ServerName mydomain.com <Directory /var/www/shopware/> Options FollowSymlinks AllowOverride All Require all granted </Directory> ErrorLog ${APACHE_LOG_DIR}/shopware_error.log CustomLog ${APACHE_LOG_DIR}/shopware_access.log combined </VirtualHost>
  EOF
sudo a2ensite shopware.conf
sudo a2enmod rewrite
sudo systemctl reload apache2
