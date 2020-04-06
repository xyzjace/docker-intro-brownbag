#!/bin/bash
set -e

echo -e "\033[1m\033[34mUse the docker build command to build images\033[0m\n"
echo -e "\033[1m\033[34m$ docker build -t dockerfile:mounted_php_server .\033[0m\n"
docker build -t dockerfile:mounted_php_server .
