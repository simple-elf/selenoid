#!/bin/bash

set -e

docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
docker buildx build --pull --push -t "simple1elf/selenoid" --platform linux/amd64,linux/arm64 .
