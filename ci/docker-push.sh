#!/bin/bash

set -e

docker build -t simple1elf/selenoid .
#docker tag $GITHUB_REPOSITORY $GITHUB_REPOSITORY:$1
docker tag simple1elf/selenoid simple1elf/selenoid:$1
#docker tag $GITHUB_REPOSITORY selenoid/hub:$1
#docker tag $GITHUB_REPOSITORY aandryashin/selenoid:$1
docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
docker push simple1elf/selenoid
docker push simple1elf/selenoid:$1
#docker push selenoid/hub:$1
#docker push aandryashin/selenoid:$1