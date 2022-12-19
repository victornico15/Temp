#!/bin/bash 

USE_SERVERGC=True
SERVICE_NAME=Viasoft.TenantManagement

echo "$USE_SERVERGC" ,"$SERVICE_NAME"


if [ "${USE_SERVERGC,,}" = "true" ]; then

tmp=$(mktemp)
 jq '.runtimeOptions.configProperties."System.GC.Server" ="true"' $SERVICE_NAME.Host.runtimeconfig.json > "$tmp"  && mv "$tmp" $SERVICE_NAME.Host.runtimeconfig.json

fi


echo "$USE_SERVERGC" 


