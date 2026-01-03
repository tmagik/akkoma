#!/bin/sh

if DOCKER=$(command -v docker); then
	echo "Using docker command: ${DOCKER}"
elif DOCKER=$(command -v podman); then
	echo "Using podman command: ${DOCKER}"
else
	echo "No viable docker or podman command found"
	exit 1
fi

${DOCKER:=docker} compose run --rm akkoma $@
