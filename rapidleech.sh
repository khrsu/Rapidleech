#!/bin/sh
apt -y update &&  apt -y upgrade &&
apt -y install apache2 &&
apt install -y language-pack-en-base &&
export LC_ALL=en_US.UTF-8 &&
export LANG=en_US.UTF-8 &&
apt install -y software-properties-common
add-apt-repository -y ppa:ondrej/php &&
apt -y update &&  apt -y upgrade &&
apt -y install unzip &&
apt install -y php7.4 &&
apt install -y php7.4-common php7.4-mysql php7.4-xml php7.4-xmlrpc php7.4-curl php7.4-gd php7.4-imagick php7.4-cli php7.4-dev php7.4-imap php7.4-mbstring php7.4-opcache php7.4-soap php7.4-zip php7.4-intl &&
service apache2 restart &&
php -r 'echo "\n\nYour PHP installation is working fine.\n\n\n";' &&
cd /var/www &&
rm -r html &&
git clone https://github.com/PBhadoo/Rapidleech html &&
cd /var/www/html &&
mkdir files &&
chmod 777 files &&
chmod 777 configs &&
chmod 777 configs/files.lst &&
rm -rf rar &&  wget https://rarlab.com/rar/rarlinux-x64-612.tar.gz &&  tar -xvf rarlinux-x64-612.tar.gz &&  rm -f rarlinux-x64-612.tar.gz &&
chmod -R 777 rar &&  chmod -R 777 rar/* &&
snap install core;  snap refresh core &&
snap install --classic certbot &&
ln -s /snap/bin/certbot /usr/bin/certbot &&
certbot --apache
