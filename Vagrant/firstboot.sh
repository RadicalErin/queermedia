# Code in this file runs on the first startup only
sudo su
add-apt-repository ppa:ondrej/php
apt-get update
apt-get install -y php7.0 php7.0-mysql php7.0-fpm php7.0-common php7.0-curl php7.0-json php7.0-mbstring libapache2-mod-php7.0 php7.0-mbstring php7.0-zip php7.0-xml
apt-get install -y git
apt-get install -y apache2
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password bacon'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password bacon'
sudo apt-get -y install mysql-server
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
mkdir -p /usr/local/bin
curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony
chmod a+x /usr/local/bin/symfony
