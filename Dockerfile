FROM php:8.2-apache

# Install necessary packages and enable Apache modules
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Reiniciar Apache para aplicar los cambios
RUN service apache2 restart