#!/bin/bash

printf "\n\n"

echo -e "\t\t\t\t\e[1;4m* * * * # Building Image # * * * *\e[0m"

printf "\n"

docker build -t strund3r/ecs .

################################################################################

printf "\n"

echo -e "\t\t\t\e[1;4m* * * * # Pushing Image to Docker Hub # * * * *\e[0m"

printf "\n"

docker push strund3r/ecs

printf "\n\n"
