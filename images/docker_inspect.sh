#!/bin/bash
set -e

echo -e "\e[1m\e[34mUse 'docker inspect <image_id>' to see info about an image\e[0m\n"
echo -e "\e[1m\e[34m$ docker inspect xyzjace/hello_world\e[0m\n"

sleep 3

jq_exists=$(command -v jq)
if [[ $? == 0 ]];
then
  docker inspect xyzjace/hello_world | jq . | less
else
  docker inspect xyzjace/hello_world | less
fi

