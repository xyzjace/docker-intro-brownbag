## Run order
* docker_build.sh (builds an image which will act as a php webserver, serving all the code we've copied in to the image at /code)
* docker_run.sh (runs our newly built image. check that you can curl the running container at localhost:the_bound_host_port/hello.php)
