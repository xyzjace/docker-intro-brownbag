#!/bin/bash
echo -e "\033[31mCleaning up any xyzjace/ containers\033[0m"
running_xyzjace_containers=$(docker ps | grep 'xyzjace/' | cut -d " " -f1)
for container in ${running_xyzjace_containers}; do
  docker kill ${container}
done

echo -e "\033[31mCleaning up any xyzjace/ images\033[0m"
xyzjace_images=$(docker images | grep xyzjace/ | cut -d " " -f1)
for image in ${xyzjace_images}; do
  echo "Removing image ${image}"
  docker rmi -f ${image}
done

echo -e "\033[31mCleaning up any dockerfile containers\033[0m"
running_dockerfile_containers=$(docker ps | grep 'dockerfile' | cut -d " " -f1)
for container in ${running_dockerfile_containers}; do
  docker kill ${container}
done

echo -e "\033[31mCleaning up any dockerfile: images\033[0m"
dockerfile_images=$(docker images | grep dockerfile | tr -s " " | cut -d " " -f1,2 | sed -e 's/ /\:/g')
for image in ${dockerfile_images}; do
  echo "Removing image ${image}"
  docker rmi -f ${image}
done
