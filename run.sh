#!/bin/sh

if [ -d "/var/www/" ]; then
  sleep 15
  cd /var/www
  ./RVM_install_server.sh
  rm -f /var/www/tmp/pids/server.pid
  printf "\n\n"
  cat /var/www/message/server.txt
  printf "\n\n"
else
  ./RVM_install_machine.sh
  rm -f /ecs_teste/APPLICATION/tmp/pids/server.pid
  rm -f /var/www/tmp/pids/server.pid
  printf "\n\n"
  cat /ecs_teste/APPLICATION/message/localhost.txt
  printf "\n\n"
fi

bundle exec rails server -b '0.0.0.0'
