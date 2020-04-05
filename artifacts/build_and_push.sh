#!/bin/bash
for dockerfile in `ls Dockerfile.*`; do
  echo "Building ${dockerfile}"
  image_name=$(echo ${dockerfile} | sed 's/Dockerfile.//g')
  docker build -t "xyzjace/${image_name}:latest" -f ${dockerfile} .
  echo "Pushing image xyzjace/${image_name}:latest"
  docker push "xyzjace/${image_name}:latest"
done
