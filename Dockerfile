FROM php:7.4.30-apache
RUN apt update && apt install -y libldap2-dev && docker-php-ext-install ldap && rm -rf /var/lib/apt/lists/*
COPY src/ /var/www/html
COPY php.ini-production /usr/local/etc/php/php.ini
EXPOSE 80
