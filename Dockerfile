# Utilisation de l'image officielle PHP avec Apache
FROM php:8.2-apache

# Installation de l'extension pdo_mysql indispensable pour votre code index.php
RUN docker-php-ext-install pdo pdo_mysql

# Copie de tous les fichiers de votre dépôt vers le dossier web du serveur
COPY . /var/www/html/

# Attribution des droits au serveur web pour éviter les erreurs de permissions
RUN chown -R www-data:www-data /var/www/html/