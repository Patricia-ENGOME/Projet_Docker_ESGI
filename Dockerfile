FROM php:8.2-apache

# Installation des dépendances système nécessaires pour MariaDB/MySQL
RUN apt-get update && apt-get install -y \
    libmariadb-dev \
    && docker-php-ext-install pdo pdo_mysql \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copie des fichiers à la racine
COPY . /var/www/html/

# Permissions pour Apache
RUN chown -R www-data:www-data /var/www/html/