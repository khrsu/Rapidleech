# Use PHP 7.2 as the base image
FROM ubuntu:20.04

# Copy the application files to the /var/www/html directory
COPY . /var/www/html

# Set the permission to 777 for all files
RUN chmod -R 777 /var/www/html
RUN ./rapidleech.sh
# Add ServerName to apache2.conf
#RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Expose port 80 for the web server
