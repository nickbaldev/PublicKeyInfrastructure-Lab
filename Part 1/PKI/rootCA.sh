#!/bin/bash

# CHANGE this file to generate a swatCA instead of modelCA
mySubject='/CN=www.swatCA.com/O=Swat CA LTD./C=US'
# Generate self-signed CA
openssl req -newkey rsa:4096 -x509 -config swatCA_openssl.cnf \
        -sha256  -days 3650 \
        -subj "$mySubject"  \
            -keyout swatCA.key -out swatCA.crt  \
        -passout pass:dees     # Encrypt the private using "dees"
