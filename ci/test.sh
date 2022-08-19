#!/bin/bash

docker-compose -p "$*" -f docker-compose.yaml -f docker-compose.dev.yaml up --build -d

sleep 4

bash ci/curl-get.sh 8082

sleep 1

bash ci/curl-post.sh 8082

docker-compose -p "$*" down