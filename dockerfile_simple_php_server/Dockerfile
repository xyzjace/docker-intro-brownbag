# Use the PHP alpine base image
FROM php:alpine

# Create the /code directory inside the image
# /code will then also exist in the container
RUN mkdir /code

# Copy all files from the directory we're building in, in to /code
# Note: This is bad practice for 'production' images, only copy what you need.
COPY . /code

# Expose 8080 as the port we run our web server on
EXPOSE 8080

# Run this command when the container starts
CMD /bin/sh /code/run_server.sh
