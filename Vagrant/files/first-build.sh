# Build a vhost
cp /var/www/Vagrant/files/queermedia.conf /var/apache2/sites-available/queermedia.conf
sudo a2ensite queermedia.conf
sudo a2dissite 000-default.conf
sudo service apache2 reload
sudo service apache2 restart
