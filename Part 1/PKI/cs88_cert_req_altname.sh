#!/bin/bash

#Generate RSA key pair and certificate request
#TODO: generate subsitute bank32 with cs88 in the following code.

mySubject="/CN=www.cs88.com/O=CS 88. /ST=PA /C=US"
openssl req -newkey rsa:2048 -sha256 \
            -subj "$mySubject" \
	    -keyout cs88_key.pem -out cs88.csr \
	    -passout pass:dees \
	    -addext "subjectAltName = DNS:www.cs88.com, \
	    			  DNS:www.cs88A.com, \
				      DNS:www.cs88B.com"
