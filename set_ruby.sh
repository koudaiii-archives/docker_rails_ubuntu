#!/bin/bash
export PATH="/usr/local/bin:$PATH"
apt-get -y install aptitude 
apt-get -y install imagemagick
apt-get -y install libreadline-dev
apt-get -y install libssl-dev
apt-get -y install zlib1g-dev
apt-get -y install libssl-dev
apt-get -y install libssl1.0.0
apt-get -y install git-core curl
apt-get -y install libreadline-dev
apt-get -y install build-essential
aptitude install -y libssl-dev

#for rubygems mysql2
apt-get install libmysqlclient-dev

#for capistrano zip
apt-get -y install bzip2*
apt-get -y install zlib-devel

# for nokogiri
apt-get -y install libxslt-dev
apt-get -y install libxml2-dev

# for Capybara-webkit
apt-get -y install libqtwebkit-dev

# install rbenv
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# ruby install 
rbenv install 2.1.1
rbenv global 2.1.1

# for rbenv
gem install bundler
gem install rehash
