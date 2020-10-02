#!/bin/sh
set -eu
exec hugo serve --log --bind 0.0.0.0 -D $@
