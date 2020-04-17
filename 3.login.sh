#!/bin/bash

#if [ $# -ne 0 ]
#	then
#		echo 'Needs to supply argument'
#		echo '  $1 = <arg>'
#		exit 1
#fi

curl -H X-Vault-Request: true -H X-Vault-Token: root --request POST --cert n1_cert.pem --key n1_key.pem -d {"name":"app"} https://172.20.20.1:8200/v1/auth/cert/login 
