#!/bin/bash

# install rvm and ruby-2.1.4
command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.bash_profile
rvm -v
rvm install ruby-2.1.4
rvm list

# install berkshelf for Chef and kitchen
gem install berkshelf

# install virtual box
sudo apt-get install virtualbox virtualbox-guest-additions-iso -y

# install vagrant
sudo apt-get install vagrant -y

echo "now install chef-client and chefdk which can be downloaded from https://www.chef.io/chef/get-chef/

exit 0
