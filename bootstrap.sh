#!/usr/bin/env bash

# Preparation
sudo add-apt-repository ppa:chris-lea/node.js # For NodeJS
sudo apt-get update
# apt-get upgrade -y

# Coloured prompt!
sed -i 's/#force_color_prompt/force_color_prompt/g' ~/.bashrc

# Install dependencies for Ruby
sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties

# Install rbenv
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
echo 'eval "$(rbenv init -)"' >> ~/.profile

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.profile

source ~/.profile

# Install Ruby
rbenv install 2.1.5
rbenv global 2.1.5

source ~/.profile

# Install NodeJS
sudo apt-get -y install nodejs

# Install Rails
gem install rails

rbenv rehash

# Move the newapp.sh script into the home folder
mv /vagrant/newapp.sh ~/