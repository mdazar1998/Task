#!/bin/bash

read -p  "Enter the link to check the HTTP error code :"  URL

x=$(curl --write-out %{http_code} --silent --output /dev/null $URL)

if [ "$x" == 200 ]
then
	echo "The Response code of $URL is : $x "
	echo "The HTTP Connection is Success for the provided url : $URL"
else
	echo "The Response code of $URL is : $x "
        echo "The HTTP Connection is Failure for the provided url : $URL"
fi
exit

