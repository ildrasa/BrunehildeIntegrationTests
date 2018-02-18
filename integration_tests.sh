#!/bin/bash

$FIRST_CURL_RESULT = $(curl http://127.0.0.1:5002/)

$SECOND_CURL_RESULT = $(curl http://127.0.0.1:5002/)

if ["$FIRST_RESULT" = "Hello World! I have been seen 1 times."]
	then 
		if ["$SECOND_CURL_RESULT" = "Hello World! I have been seen 2 times."]
			then
				exit 0
			else
				exit -1
		fi
	else
		exit -1
fi