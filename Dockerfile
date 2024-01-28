# Gunakan base image PHP 7.4
FROM php:7.4-apache

# Copy source code ke direktori /var/www/html di dalam container
COPY . /var/www/html

# Expose port 80
EXPOSE 80
