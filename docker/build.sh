#!/bin/sh
set -eu
exec docker build --rm -t jrmsdev/tcck:website \
	--build-arg USER_UID=$(id -u) \
	--build-arg USER_GID=$(id -g) \
	--build-arg USER_UMASK=$(umask) \
	./docker
