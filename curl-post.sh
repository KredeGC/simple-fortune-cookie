#!/bin/bash

sleep 4

http_code=$(curl -s -o /dev/null -w '%{http_code}' -H "Content-Type: application/json" -d '{"message":"Hello world!"}' http://localhost:8082/api/add;)

if [[ $http_code -eq 200 ]]; then
    echo "http://localhost:8082/api/add responded with 200"
    exit 0
fi

echo "Could not reach http://localhost:8082/api/add, responded with $http_code"
exit 14