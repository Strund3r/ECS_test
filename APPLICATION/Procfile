web: bundle exec puma start -p $PORT
worker: bundle exec rake resque:work QUEUE=*
clock:  bundle exec rake resque:scheduler
