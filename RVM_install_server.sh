#!/bin/bash

# Install Ruby
sudo apt-get update -y

sudo apt-get install -y libgmp3-dev

sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

# Install RVM
sudo apt-get install -y libgdbm-dev libncurses5-dev automake libtool bison libffi-dev

curl -L https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm install 2.3.1

rvm use 2.3.1 --default

# Install Bundler Gem
echo "gem: --no-ri --no-rdoc" > ~/.gemrc

gem install bundler

bundle install

# Install NodeJS
echo -ne '\n' | sudo add-apt-repository ppa:chris-lea/node.js

sudo apt-get update

sudo apt-get install -y nodejs

# Install Rails
gem install rails

./check_versions.sh
