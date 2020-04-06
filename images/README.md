## Docker images
A bundling of software in a consistent format that Docker can read and run.

May or may not be a 'complete' set of software.

Some images are designed as a basis for other images to build on, and serve no
purpose on their own otherwise.

Some images are whole applications, ready to run straight away.

## Run order
* docker_images.sh (shows currently downloaded docker images. if you've just downloaded docker, you probably won't have any images)
* docker_pull.sh (grabs a pre-built image from Dockerhub called 'xyzjace/hello_world:latest'. if you run docker_images.sh again you should see the newly downloaded image. in this scenario, 'xyzjace' is the repository, 'hello_world' is the image name, and 'latest' is the tag)
* docker_inspect.sh (inspects our newly downloaded 'hello_world' image. there's a lot of information in inspect, but look at the "Cmd" key to see that it will simply "echo hello world" when we run this image)
