# Use PHP 7.2 as the base image
FROM php:7.2-apache

# Copy the application files to the /var/www/html directory
COPY . /var/www/html

# Set the permission to 777 for all files
RUN chmod -R 777 /var/www/html

# Expose port 80 for the web server
EXPOSE 80
