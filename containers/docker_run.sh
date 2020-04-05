#!/bin/bash
set -e

echo -e "\e[1m\e[34mUse 'docker run [registry/][repository/]<image_name>[:tag]' to run an image\e[0m\n"
echo -e "\e[1m\e[34m$ docker run xyzjace/hello_world:latest\e[0m\n"
docker run xyzjace/hello_world:latest
