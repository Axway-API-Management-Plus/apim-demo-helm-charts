#!/bin/bash
 
#Prompt for user credentials
echo "Enter credentials"
read -p "username: " USER
read -s -p "Password (replace the special chars @,\,$,%,etc. with  \@,\\\\,\$,\%): " PASS
echo "***************"

# Run helm install with provided values

helm install --values local-values.yaml --name=${RUNID} --set ingress.host=$(hostname -i),run.id=${RUNID} --set cassandra.host0=$(hostname -i) --set imageCredentials.username=$USER --set imageCredentials.password=$PASS charts/apimgr-run-id


