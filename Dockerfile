# Gunakan base image PHP 7.4
FROM php:7.4-cli

# Copy source code ke direktori /var/www/html di dalam container
COPY . /var/www/html

WORKDIR /var/www/html

#RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Expose port 80
#EXPOSE 80
