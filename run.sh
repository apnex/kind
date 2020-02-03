#!/bin/bash

function startkind {
	docker run -it \
	--privileged \
	--name=kind-client \
	-v /var/run/docker.sock:/var/run/docker.sock \
	apnex/kind-client
}

startkind
