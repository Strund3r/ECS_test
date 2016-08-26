#!/bin/bash

printf "\n\n"

echo -e "\t\t\t\e[1;4m* * * * # Authenticating Docker Client To ECS Registry # * * * *\e[0m"

printf "\n\n"

docker_login=$(aws ecr get-login --region us-east-1)

$docker_login
################################################################################

./docker_push.sh

################################################################################

# Tagging Docker Image Before Push To ECS Registry

docker tag strund3r/ecs:latest 936160728216.dkr.ecr.us-east-1.amazonaws.com/strund3r/ecs:latest

################################################################################

echo -e "\t\t\t\e[1;4m* * * * # Pushing Docker Image To ECS Registry # * * * *\e[0m"

printf "\n\n"

docker push 936160728216.dkr.ecr.us-east-1.amazonaws.com/strund3r/ecs:latest

################################################################################

cat message/done.txt

printf "\n"
