# Release task - runs once during deployment (before web/worker start)
release: bin/rails db:migrate

# Web server process - runs on dedicated web server (8 vCPU, 8GB RAM)
# Uses: WEB_CONCURRENCY=4, RAILS_MAX_THREADS=5, DB_POOL=25
web: bundle exec puma -C config/puma.rb

# Background job worker process - runs on dedicated jobs server (8 vCPU, 8GB RAM)
# Uses: JOB_CONCURRENCY=6, SOLID_QUEUE_THREADS=4, DB_POOL=30
worker: bundle exec rake solid_queue:start
