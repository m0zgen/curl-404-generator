#!/bin/bash

COUNTER=0
COUNT_LIMIT=5
SERVER="server.com"
while [  $COUNTER -lt $COUNT_LIMIT ]; do
	echo Senr request is $COUNTER
	let COUNTER=COUNTER+1

	REQ=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)

	echo "https://$SERVER/$REQ"
	curl -k -X POST https://$SERVER/$REQ # > /dev/null 2>&1

done