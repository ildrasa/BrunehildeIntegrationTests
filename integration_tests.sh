#!/bin/bash

FIRST_CURL_RESULT=$(curl -sb -H http://127.0.0.1:5002/)
EXPECTED_FIRST_CURL="Hello World! I have been seen 1 times."
SECOND_CURL_RESULT=$(curl -sb -H http://127.0.0.1:5002/)
EXPECTED_SECOND_CURL="Hello World! I have been seen 2 times."

if [ "$FIRST_CURL_RESULT" == "$EXPECTED_FIRST_CURL" ]
	then 
		if [ "$SECOND_CURL_RESULT" = "$EXPECTED_SECOND_CURL" ]
			then
				exit 0
			else
				exit -1
		fi
	else
		exit -1
fi
