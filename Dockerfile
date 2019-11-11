FROM php:7.2.2-apache
RUN a2enmod rewrite
RUN a2enmod ssl
RUN extension=pdo.so
RUN extension=pdo_mysql.so
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-enable pdo_mysql
RUN service apache2 restart

RUN chown -R www-data:www-data /var/www
RUN chmod 755 /var/www

EXPOSE 80 443 3306