#!/bin/bash

# install nodejs
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
apt-get install nodejs -y

# update npm to latest version
# cd /usr/local/lib/node_modules/
# npm install npm@latest

# install bower
npm install -g bower

# install gulp
npm install --global gulp
