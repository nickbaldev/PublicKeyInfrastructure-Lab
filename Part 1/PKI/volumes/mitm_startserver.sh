#!/bin/bash

# run this script from root of docker container so that
# example.com will work. copies all the right files from volumes.

mkdir /var/www/example/

cp volumes/index.html /var/www/example/index.html

cp volumes/index_red.html /var/www/example/index_red.html

cp volumes/example.crt certs/example.crt

cp volumes/example.key certs/example.key

cp volumes/example_apache_ssl.conf /etc/apache2/sites-available/example_apache_ssl.conf

a2enmod ssl

a2ensite example_apache_ssl

service apache2 restart
