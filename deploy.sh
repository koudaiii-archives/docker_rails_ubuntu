#!bin/bash
#source ~/.bash_profile
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# for deploy
cd /var/www/
git clone https://github.com/koud/twitter-bootswatch-rails-demo.git /var/www/app
cd /var/www/app
bundle install
rake db:create RAILS_ENV=production; rake db:migrate RAILS_ENV=production; rake db:seed RAILS_ENV=production;
bundle exec puma -e production -d -b unix:///var/run/app.sock -S /var/run/app.state
