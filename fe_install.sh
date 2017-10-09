#!/bin/bash

# install nodejs
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# update npm to latest version
# cd /usr/local/lib/node_modules/
# npm install npm@latest

# install bower
npm install -g bower

# install gulp
npm install --global gulp
