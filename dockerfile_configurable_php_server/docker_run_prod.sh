#!/bin/bash
set -e

echo -e "\033[1m\033[34mUse the docker run command to run a container\033[0m\n"
echo -e "\033[1m\033[34m$ docker run -P -w /code/prod -d -v ${PWD}/prod:/code/prod --rm --name dockerfile-configurable-php-server dockerfile:configurable_php_server -t /code/prod\033[0m\n"
docker run -P -w /code/prod -d -v ${PWD}/prod:/code/prod --rm --name dockerfile-configurable-php-server dockerfile:configurable_php_server -t /code/prod

