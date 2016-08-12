#!/bin/sh

if [ -d "~/myapp" ]; then
  ./RVM_install_server.sh
  rm -f ~/myapp/tmp/pids/server.pid
  printf "\n\n"
  cat ~/myapp/message/server.txt
  printf "\n\n"
else
  ./RVM_install_machine.sh
  rm -f ~/Documents/ecs_teste/tmp/pids/server.pid
  rm -f ~/myapp/tmp/pids/server.pid
  printf "\n\n"
  cat ~/Documents/ecs_teste/message/localhost.txt
  printf "\n\n"
fi

bundle exec rails server -b '0.0.0.0'
