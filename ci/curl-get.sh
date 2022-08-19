#!/bin/bash

http_code=$(curl -s -o /dev/null -w '%{http_code}'  http://localhost:$*;)

echo "GET http://localhost:$*, responded with $http_code"

if [[ $http_code -eq 200 ]]; then
    echo "--Test passed--"
    exit 0
fi

echo "--Test failed--"
exit 14