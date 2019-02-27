#!/bin/bash

builtin echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin
docker push pqclean/ci-container:$1
