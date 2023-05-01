FROM php:8.1-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
COPY redlock-db.sql /docker-entrypoint-initdb.d/redlock-db.sql
COPY index.php /var/www/html/
RUN chown -R www-data:www-data /var/www/html
RUN chmod 774 /var/www/html/
