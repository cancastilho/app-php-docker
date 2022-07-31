FROM php:7.4.30-apache
RUN apt update && apt install -y libldap2-dev libapache2-mod-security2 && docker-php-ext-install ldap && rm -rf /var/lib/apt/lists/*
COPY src/ /var/www/html
COPY php.ini-production /usr/local/etc/php/php.ini
COPY security.conf /etc/apache2/conf-enabled/security.conf
COPY apache2.conf /etc/apache2/apache2.conf
EXPOSE 80
