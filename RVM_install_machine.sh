#!/bin/bash

# Install Ruby
source ~/.rvm/scripts/rvm

rvm use 2.3.1 --default

# Install Bundler Gem
echo "gem: --no-ri --no-rdoc" > ~/.gemrc

gem install bundler

bundle install

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
