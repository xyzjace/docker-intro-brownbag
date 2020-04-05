#!/bin/bash
set -e

echo -e "\e[1m\e[34mUse 'docker pull [registry/][repository/]<image_name>[:tag]' to download a docker image from a registry\e[0m\n"
echo -e "\e[1m\e[34m$ docker pull xyzjace/hello_world \e[0m\n"

docker pull xyzjace/hello_world

