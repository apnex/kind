#!/bin/bash

docker rmi -f apnex/kind-client 2>/dev/null
docker build --no-cache -t apnex/kind-client -f kind-client.docker .
