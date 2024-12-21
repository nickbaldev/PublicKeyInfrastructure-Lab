#!/bin/bash

# run this script from root of docker container so that
# cs88.com will work. copies all the right files from volumes.

cp volumes/cs88.crt certs/cs88.crt

cp volumes/cs88.key certs/cs88.key

cp volumes/cs88_apache_ssl.conf /etc/apache2/sites-available/cs88_apache_ssl.conf

a2enmod ssl

a2ensite cs88_apache_ssl

service apache2 restart
