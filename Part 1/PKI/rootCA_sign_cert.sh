#!/bin/bash

# TODO: change the configuration file to our config file, and bank32 to cs88, and modelCA to swatCA
openssl ca -config swatCA_openssl.cnf -policy policy_anything \
	   -md sha256 -days 3650 \
	   -in example.csr -out example_cert.pem -batch \
	   -cert swatCA.crt -keyfile swatCA.key -passin pass:dees
