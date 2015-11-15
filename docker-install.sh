#!/bin/bash

###################################################################
# This install script is for written for Debian                   #
# Debian version 8.2                                              #
# Reference: https://docs.docker.com/engine/installation/debian/  #
###################################################################

# purge any older docker repositories
apt-get purge lxc-docker*
apt-get purge docker.io*

# add new pgp key
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

# add docker repositories
echo '# Debian Jessie' >> /etc/apt/sources.list.d/docker.list
echo 'deb http://apt.dockerproject.org/repo debian-jessie main' >> /etc/apt/sources.list.d/docker.list

# update apt package index
apt-get update

# Verify that apt is pulling from the right repository.
apt-cache policy docker-engine

# install docker
apt-get update
apt-get install docker-engine
service docker start
docker version

exit 0
