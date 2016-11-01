#!/bin/bash

# Install Ruby
source ~/.rvm/scripts/rvm

rvm use ruby-2.0.0-p648 --default

# Install Bundler Gem
echo "gem: --no-ri --no-rdoc" > ~/.gemrc

gem install bundler

bundle install

# Install Rails
gem install rails

./check_versions.sh
