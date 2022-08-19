#!/bin/bash

http_code=$(curl -s -o /dev/null -w '%{http_code}' -H "Content-Type: application/json" -d '{"message":"Hello world!"}' http://localhost:$*/api/add;)

echo "GET http://localhost:$*, responded with $http_code"

if [[ $http_code -eq 200 ]]; then
    echo "--Test passed--"
    exit 0
fi

echo "--Test failed--"
exit 14