# Use the PHP alpine base image
FROM php:alpine

# Create the /code directory inside the image
# /code will then also exist in the container
RUN mkdir /code

# Copy all files from the directory we're building in, in to /code
COPY . /code

# Run this command when the container starts
CMD php /code/hello.php
