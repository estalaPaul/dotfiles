#!/usr/bin/zsh

echo "Setting up Node JS"
sudo pacman -S typescript --noconfirm > /dev/null
yay -S nvm --noconfirm > /dev/null
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source /usr/share/nvm/init-nvm.sh
nvm install v16.14.2 > /dev/null
nvm use v16.14.2
npm i -g intelephense cspell @cspell/dict-es-es
cspell link add @cspell/dict-es-es

echo "Setting up PHP"
sudo pacman -S php php-sqlite php-gd php-intl xdebug openssl-1.1 --noconfirm > /dev/null
echo "Don't forget to uncomment needed extensions in ini file"

echo "Setting up Python venv"
sudo pacman -S python python-pip
sudo pip install virtualenv

echo "Setting up Composer"
EXPECTED_CHECKSUM="$(php -r 'copy("https://composer.github.io/installer.sig", "php://stdout");')"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_CHECKSUM="$(php -r "echo hash_file('sha384', 'composer-setup.php');")"
if [ "$EXPECTED_CHECKSUM" != "$ACTUAL_CHECKSUM" ]
then
    >&2 echo 'ERROR: Invalid installer checksum'
    rm composer-setup.php
    exit 1
fi
php composer-setup.php --quiet
rm composer-setup.php
sudo mv composer.phar /usr/local/bin/composer

echo "Setting up MariaDB"
sudo pacman -S mariadb --noconfirm > /dev/null
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql > /dev/null
