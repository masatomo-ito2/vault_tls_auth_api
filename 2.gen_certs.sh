#!/bin/bash

# Generate client certs and save them in env (JSON_RESP)
JSON_RESP=$(curl -X PUT -H "X-Vault-Request: true" -H "X-Vault-Token: ${VAULT_TOKEN}" -d '{ "common_name":"n1.vault.masa", "ttl":"24000h" }' ${VAULT_ADDR}/v1/pki/issue/webapp)

# Extract certs and key into files
echo $JSON_RESP | jq -r '.data.issuing_ca' > n1_issuing_ca.pem
echo $JSON_RESP | jq -r '.data.certificate' > n1_cert.pem
echo $JSON_RESP | jq -r '.data.private_key' > n1_key.pem

# Since this cert is issued by Root CA, there is no ca chain
#echo $JSON_RESP | jq -r '.data.ca_chain[0]' > n1_ca_chain.pem


