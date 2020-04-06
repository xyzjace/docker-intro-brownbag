#!/bin/bash
set -e

echo -e "\033[1m\033[34mUse the docker run command to run a container\033[0m\n"
echo -e "\033[1m\033[34m$ docker run -P -d --rm --name dockerfile-simple-php-server dockerfile:simple_php_server\033[0m\n"
docker run -P -d --rm --name dockerfile-simple-php-server dockerfile:simple_php_server

echo -e "\033[1m\033[34mUse the docker logs -f command to follow the logs of a container\033[0m\n"
echo -e "\033[1m\033[34m$ docker logs -f dockerfile-simple-php-server\033[0m\n"
docker logs -f dockerfile-simple-php-server
