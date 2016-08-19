#!/bin/bash

printf "\n\n"

echo -e "\t\t\t\e[1;4m* * * * # Pushing to Docker Hub # * * * *\e[0m"

printf "\n\n"

echo -e "   \e[1;4m* * # Building Image # * *\e[0m"

printf "\n"

docker build .
################################################################################
printf "\n"

echo -e "   \e[1;4m* * # Pushing Image # * *\e[0m"

printf "\n"

docker push strund3r/ecs

printf "\n\n"
################################################################################
cat message/done.txt

printf "\n"
