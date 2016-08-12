#!/bin/bash

# Check versions
printf "\n\n\n"

echo -e "\t\t\t\e[1;4m* * * * * # Checking Versions # * * * * *\e[0m"

printf "\n\n"

echo -ne '\t\t\t\e[1;4;38;5;226m##                                       \e[0m   \e[2m(5%)\e[22m\r'

sleep 5

nodejs_version=$(nodejs -v)
bundler_version=$(bundler -v)

echo -ne '\t\t\t\e[1;4;38;5;226m##\e[1;4;38;5;56m###################                    \e[0m  \e[2m(51%)\e[22m\r'

sleep 5

ruby_version=$(ruby -v)
rails_version=$(rails -v)

echo -ne '\t\t\t\e[1;4;38;5;226m##\e[1;4;38;5;56m###################\e[1;4;38;5;196m####################\e[0m \e[2m(100%)\e[22m\r'

sleep 0.3

echo -ne '\n\n\n'

echo NodeJS version:
printf "\n"
echo -e "\t\e[1;4;28;41m $nodejs_version \e[0m"
printf "\n"

echo Bundler version:
printf "\n"
echo -e "\t\e[1;4;28;41m $bundler_version \e[0m"
printf "\n"

echo Ruby version:
printf "\n"
echo -e "\t\e[1;4;28;41m $ruby_version \e[0m"
printf "\n"

echo Rails version:
printf "\n"
echo -e "\t\e[1;4;28;41m $rails_version \e[0m"
printf "\n\n\n"
