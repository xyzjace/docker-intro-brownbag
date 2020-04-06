## Run order
* docker_build.sh (builds an image which copies all code from the current directory in to the image at /code. sets the default command of the container to execute the hello.php file)
* docker_run.sh (runs our newly built container which outputs the result of running `php /code/hello.php` from inside the container)
