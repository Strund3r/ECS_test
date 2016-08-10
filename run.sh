#!/bin/sh

if [ -d "~/myapp" ]; then
  rm -f ~/myapp/tmp/pids/server.pid
  printf "\n\n"
  cat ~/myapp/message/server.txt
  printf "\n\n"
else
  rm -f ~/Documents/ecs_teste/tmp/pids/server.pid
  rm -f ~/myapp/tmp/pids/server.pid
  printf "\n\n"
  cat ~/Documents/ecs_teste/message/localhost.txt
  printf "\n\n"
fi

bundle exec rails server -b '0.0.0.0'
