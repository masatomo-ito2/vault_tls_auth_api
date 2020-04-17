#!/bin/bash

#if [ $# -ne 0 ]
#	then
#		echo 'Needs to supply argument'
#		echo '  $1 = <arg>'
#		exit 1
#fi

curl -H "X-Vault-Request: true" -H "X-Vault-Token: ${VAULT_TOKEN}" ${VAULT_ADDR}/v1/sys/seal-status
