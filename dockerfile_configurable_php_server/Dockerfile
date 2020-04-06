# Use the PHP alpine base image
FROM php:alpine

# Create the /dev directory inside the image
# /dev will then also exist in the container
RUN mkdir -p /code/dev

# Create the /prod directory inside the image
# /prod will then also exist in the container
RUN mkdir -p /code/prod

# Expose 8080 as the port we run our web server on
EXPOSE 8080

# Run this command when the container starts
ENTRYPOINT php -S 0.0.0.0:8080
