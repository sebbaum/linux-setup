#!/bin/bash

# install nodejs
curl -sL https://deb.nodesource.com/setup_5.x | bash -
apt-get install nodejs -y

# install bower
npm install -g bower