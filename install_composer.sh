#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Get checksum from https://getcomposer.org/download/ and provide it as a param to this script!"
    exit 1
fi

CHECKSUM=$1

sudo mkdir /opt/composer

php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
php -r "if (hash('SHA384', file_get_contents('composer-setup.php')) === '${CHECKSUM}') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --filename=composer --install-dir=/opt/composer
php -r "unlink('composer-setup.php');"

sudo ln -s /opt/composer/composer /usr/local/bin/composer
