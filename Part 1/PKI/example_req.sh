#!/bin/bash

#Generate RSA key pair and certificate request
# the example here shows how we might generate a request for bank32.com.
# TODO: Your task is to generate a similar request for www.cs88.com instead.

mySubject="/CN=www.example.com/O=EXAMPLE. /ST=PA /C=US"
openssl req -newkey rsa:2048 -sha256 \
            -subj "$mySubject" \
	    -keyout example_key.pem -out example.csr \
	    -passout pass:dees \
	    -addext "subjectAltName = DNS:www.example.com"
