release: bin/rails db:migrate
web: bundle exec puma -C config/puma.rb
worker: bundle exec rake solid_queue:start
cache: bin/rails cache:clear
