#!/bin/bash

http_code=$(curl -s -o /dev/null -w '%{http_code}'  http://inst67.z1.eficode.academy:8080;)

if [[ $http_code -eq 200 ]]; then
    echo "http://inst67.z1.eficode.academy:8080 responded with 200"
    exit 0
fi

echo "Could not reach http://inst67.z1.eficode.academy:8080, responded with $http_code"
exit 14