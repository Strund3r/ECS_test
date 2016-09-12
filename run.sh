#!/bin/sh

if [ -d "/ecs_teste" ]; then
  cd /ecs_teste/APPLICATION
  ./RVM_install_machine.sh
  rm -f /ecs_teste/APPLICATION/tmp/pids/server.pid
  rm -f /app/tmp/pids/server.pid
  printf "\n\n"
  cat /ecs_teste/APPLICATION/message/localhost.txt
  printf "\n\n"
  bundle exec rails server -b '0.0.0.0'
else
  sleep 15
  cd /app
  rm -f /app/tmp/pids/server.pid
  printf "\n\n"
  cat /app/message/server.txt
  printf "\n\n"
  rake db:create
  rake db:migrate
  bundle exec rails server -b '0.0.0.0'
fi
