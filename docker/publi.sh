#!/bin/sh
set -eu
exec docker run -it --rm --name tcck-publish --hostname tcck.publish.localhost \
	-v ${PWD}:/src/website \
	-u tcck jrmsdev/tcck:website /src/website/build.sh
