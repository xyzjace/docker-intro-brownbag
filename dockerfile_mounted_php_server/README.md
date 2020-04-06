## Run order
* docker_build.sh (builds an image that runs a php webserver serving code from /code. we will mount /code when we run the image)
* docker_run.sh (runs our newly built image and mounts the local directory to /code. verify that you can now curl localhost:bound_container_port/hello.php)
