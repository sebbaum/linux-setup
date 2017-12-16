#!/bin/bash

# install nodejs
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
#Open or create a ~/.profile file and add this line:
export PATH=~/.npm-global/bin:$PATH
source ~/.profile

# update npm to latest version
# cd /usr/local/lib/node_modules/
# npm install npm@latest

# install gulp
npm install --global gulp
