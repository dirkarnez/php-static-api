FROM php:8.0.0-apache

# Don't know if need this line, keep as a note
# RUN sed -e '/<Directory \/var\/www\/>/,/<\/Directory>/s/AllowOverride None/AllowOverride All/' -i /etc/apache2/apache2.conf

RUN a2enmod rewrite \
 && echo "ServerName docker" >> /etc/apache2/apache2.conf
