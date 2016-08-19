#!/bin/bash

# Check versions
printf "\n\n"

echo -e "\t\t\t\e[1;4m* * * * * # Checking Versions # * * * * *\e[0m"

printf "\n\n"

echo -ne '\t\t\t\e[1;4;38;5;226m##                                       \e[0m   \e[2m(5%)\e[22m\r'

#sleep 1
nodejs_version=$(nodejs -v)
bundler_version=$(bundler -v)
docker_version=$(docker --version)

echo -ne '\t\t\t\e[1;4;38;5;226m##\e[1;4;38;5;56m###################                    \e[0m  \e[2m(51%)\e[22m\r'

#sleep 1

ruby_version=$(ruby -v)
rails_version=$(rails -v)
docker_compose_version=$(docker-compose --version)

echo -ne '\t\t\t\e[1;4;38;5;226m##\e[1;4;38;5;56m###################\e[1;4;38;5;196m####################\e[0m \e[2m(100%)\e[22m\r'

sleep 0.3

echo -ne '\n\n\n'
################################################################################
echo Docker Engine version:
printf "\n"
if [[ $docker_version = "Docker version 1.12.1, build 23cf638" ]]; then
  echo -e "\t\e[1;4;28;41m Docker Engine 1.12.1 \e[0m"
else
  echo -e "\t\e[1;4;28;41m $docker_version \e[0m \t\e[1;4;31;40m* UPDATED *\e[0m"
fi
printf "\n"

sleep 0.5
################################################################################
echo Docker Compose version:
printf "\n"
if [[ $docker_compose_version = "docker-compose version 1.8.0, build f3628c7" ]]; then
  echo -e "\t\e[1;4;28;41m Docker Compose 1.8.0 \e[0m"
else
  echo -e "\t\e[1;4;28;41m $docker_compose_version \e[0m \t\e[1;4;31;40m* UPDATED *\e[0m"
fi
printf "\n"

sleep 0.5
################################################################################
echo NodeJS version:
printf "\n"
if [[ $nodejs_version = "v4.2.6" ]]; then
  echo -e "\t\e[1;4;28;41m NodeJS v4.2.6  \e[0m"
else
  echo -e "\t\e[1;4;28;41m NodeJS $nodejs_version \e[0m \t\e[1;4;31;40m* UPDATED *\e[0m"
fi
printf "\n"

sleep 0.5
################################################################################
echo Bundler version:
printf "\n"
if [[ $bundler_version = "Bundler version 1.12.5" ]]; then
  echo -e "\t\e[1;4;28;41m Bundler 1.12.5 \e[0m"
else
  echo -e "\t\e[1;4;28;41m $bundler_version \e[0m \t\e[1;4;31;40m* UPDATED *\e[0m"
fi
printf "\n"

sleep 0.5
################################################################################
echo Ruby version:
printf "\n"

if [[ $ruby_version = "ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-linux]" ]]; then
  echo -e "\t\e[1;4;28;41m Ruby 2.3.1p112 \e[0m"
else
  echo -e "\t\e[1;4;28;41m $ruby_version \e[0m \t\e[1;4;31;40m* UPDATED *\e[0m"
fi
printf "\n"

sleep 0.5
################################################################################
echo Rails version:
printf "\n"
if [[ $rails_version = "Rails 5.0.0" ]]; then
  echo -e "\t\e[1;4;28;41m Rails 5.0.0 \e[0m"
else
  echo -e "\t\e[1;4;28;41m $rails_version \e[0m \t\e[1;4;31;40m* UPDATED *\e[0m"
fi
printf "\n\n"

sleep 1

cat ~/Documents/ecs_teste/message/done.txt

printf "\n"
