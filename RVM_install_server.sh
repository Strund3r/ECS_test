#!/bin/sh

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

printf "\n\n\n"

# Check versions

nodejs_version=$(nodejs -v)
bundler_version=$(bundler -v)
ruby_version=$(ruby -v)
rails_version=$(rails -v)

echo NodeJS version:
printf "\n"
echo -e "\t\e[1;4;28;44m $nodejs_version \e[0m"
printf "\n"

echo Bundler version:
printf "\n"
echo -e "\t\e[1;4;28;44m $bundler_version \e[0m"
printf "\n"

echo Ruby version:
printf "\n"
echo -e "\t\e[1;4;28;44m $ruby_version \e[0m"
printf "\n"

echo Rails version:
printf "\n"
echo -e "\t\e[1;4;28;44m $rails_version \e[0m"
printf "\n\n\n"
