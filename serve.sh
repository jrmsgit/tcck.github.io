#!/bin/sh
set -eu
exec hugo serve --bind 0.0.0.0 -D $@
