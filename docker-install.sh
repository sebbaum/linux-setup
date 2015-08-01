#!/bin/bash

#http://askubuntu.com/questions/472412/how-do-i-upgrade-docker

sudo add-apt-repository ppa:docker-maint/testing
sudo apt-get update
sudo apt-get install docker.io
docker -v
wget -qO- https://get.docker.io/gpg | sudo apt-key add -
sudo sh -c "echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get install lxc-docker
