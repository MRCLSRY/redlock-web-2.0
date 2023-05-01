# 2502001164 - Marcelius Surya Wijaya
# Base image menggunakan PHP 8.1.x dan Apache Web Server
FROM php:8.1-apache

# Install mysqli extension
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copy file sql ke direktori tujuan di dalam container
COPY redlock-db.sql /docker-entrypoint-initdb.d/redlock-db.sql

# Copy file index.php ke dalam image
COPY index.php /var/www/html/
COPY count_user.php /var/www/html/

# Grant permission kepemilikan 'u' dan 'g' pada direktori /var/www/html
# Dan menghilangkan permission ‘w’ and ‘x’ untuk others
RUN chown -R www-data:www-data /var/www/html
RUN chmod 774 /var/www/html/
