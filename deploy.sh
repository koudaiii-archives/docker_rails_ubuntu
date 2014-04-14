#!bin/bash
#source ~/.bash_profile
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# for deploy
cd /var/www/
git clone https://github.com/koudaiii/twitter-bootswatch-rails-demo.git app

# set database.yml for docker

if [ -f /var/www/app/config/database.yml ]; then
  mv /var/www/app/config/database.yml /var/www/app/config/database.yml.original
fi
cp /root/database.yml /var/www/app/config/database.yml

# deploy

cd /var/www/app
bundle install
rake db:create RAILS_ENV=production; rake db:migrate RAILS_ENV=production; rake db:seed RAILS_ENV=production;
bundle exec puma -e production -d -b unix:///var/run/app.sock -S /var/run/app.state
