FROM php:7.2-apache

# Don't know if need this line, keep as a note
RUN sed -e '/<Directory \/var\/www\/>/,/<\/Directory>/s/AllowOverride None/AllowOverride All/' -i /etc/apache2/apache2.conf

RUN a2enmod rewrite
RUN service apache2 restart