#!/bin/sh

if [ -d "~/myapp" ]; then
  cd ~/myapp
  rm -f ~/myapp/tmp/pids/server.pid
  printf "\n\n"
  cat message/server.txt
  printf "\n\n"
else
  cd /home/franzwagner/Documents/ecs_teste
  rm -f ~/Documents/ecs_teste/tmp/pids/server.pid
  rm -f /myapp/tmp/pids/server.pid
  printf "\n\n"
  cat message/localhost.txt
  printf "\n\n"
fi

bundle exec rails server -b '0.0.0.0'
