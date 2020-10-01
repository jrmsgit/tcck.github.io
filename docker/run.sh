#!/bin/sh
set -eu
exec docker run -it --rm --name tcck-website --hostname tcck.localhost \
	-p 127.0.0.1:1313:1313 \
	-v ${PWD}:/src/website \
	-u tcck jrmsdev/tcck:website $@
