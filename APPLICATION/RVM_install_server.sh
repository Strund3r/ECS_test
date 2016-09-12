#!/bin/bash

# Install Ruby

echo -e "\t\t\t\e[1;4m* * * * # Installing Ruby # * * * *\e[0m"
printf "\n\n"

echo -e "\t\e[1;4m* * * * # 1. # * * * *\e[0m"
apt-get update -y

echo -e "\t\e[1;4m* * * * # 2. # * * * *\e[0m"
apt-get install -y libgmp3-dev

echo -e "\t\e[1;4m* * * * # 3. # * * * *\e[0m"
apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

# Install RVM

printf "\n\n"
echo -e "\t\t\t\e[1;4m* * * * # Installing RVM # * * * *\e[0m"
printf "\n\n"

echo -e "\t\e[1;4m* * * * # 1. # * * * *\e[0m"
apt-get install -y libgdbm-dev libncurses5-dev automake libtool bison libffi-dev

echo -e "\t\e[1;4m* * * * # 2. # * * * *\e[0m"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

echo -e "\t\e[1;4m* * * * # 3. # * * * *\e[0m"
curl -L https://get.rvm.io | bash -s stable

echo -e "\t\e[1;4m* * * * # 4. # * * * *\e[0m"
source /etc/profile.d/rvm.sh
unset GEM_HOME

echo -e "\t\e[1;4m* * * * # 5. # * * * *\e[0m"
rvm install 2.3.1

echo -e "\t\e[1;4m* * * * # 6. # * * * *\e[0m"
rvm use 2.3.1 --default

# Install Bundler Gem

printf "\n\n"
echo -e "\t\t\t\e[1;4m* * * * # Installing Bundler # * * * *\e[0m"
printf "\n\n"

echo -e "\t\e[1;4m* * * * # 1. # * * * *\e[0m"
echo "gem: --no-ri --no-rdoc" > ~/.gemrc

echo -e "\t\e[1;4m* * * * # 2. # * * * *\e[0m"
gem install bundler

# Install NodeJS

printf "\n\n"
echo -e "\t\t\t\e[1;4m* * * * # Installing NodeJS # * * * *\e[0m"
printf "\n\n"

echo -e "\t\e[1;4m* * * * # 1. # * * * *\e[0m"
echo -ne '\n' |  add-apt-repository ppa:chris-lea/node.js

echo -e "\t\e[1;4m* * * * # 2. # * * * *\e[0m"
apt-get update

echo -e "\t\e[1;4m* * * * # 3. # * * * *\e[0m"
apt-get install -y nodejs

# Checking Versions

./check_versions.sh
