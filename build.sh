#!/bin/sh
set -eu
hugo -v --cleanDestinationDir --gc --i18n-warnings --path-warnings $@
cp -va .nojekyll docs/en/404.html docs/
exit 0
