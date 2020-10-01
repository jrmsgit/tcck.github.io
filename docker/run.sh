#!/bin/sh
set -eu
exec docker run -it --rm --name tcck-website --hostname tcck.localhost \
	-v ${PWD}:/src/website \
	-u tcck jrmsdev/tcck:website $@
