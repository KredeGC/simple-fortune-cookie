#!/bin/bash

sleep 4

http_code=$(curl -s -o /dev/null -w '%{http_code}'  http://localhost:8082;)

if [[ $http_code -eq 200 ]]; then
    echo "http://localhost:8082 responded with 200"
    exit 0
fi

echo "Could not reach http://localhost:8082, responded with $http_code"
exit 14