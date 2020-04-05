#!/bin/bash
echo -e "\e[31mCleaning up any xyzjace/ containers\e[0m"
running_xyzjace_containers=$(docker ps | grep 'xyzjace/' | cut -d " " -f1)
for container in ${running_xyzjace_containers}; do
  docker kill ${container}
done

echo -e "\e[31mCleaning up any xyzjace/ images\e[0m"
xyzjace_images=$(docker images | grep xyzjace/ | cut -d " " -f1)
for image in ${xyzjace_images}; do
  echo "Removing image ${image}"
  docker rmi -f ${image}
done
