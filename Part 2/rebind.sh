#!/bin/sh

docker cp zone_attacker32.com attacker-ns-10.9.0.153:etc/bind/zone_attacker32.com

docker exec attacker-ns-10.9.0.153 rndc reload attacker32.com

docker exec local-dns-server-10.9.0.53 rndc flush