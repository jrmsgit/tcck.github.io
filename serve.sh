#!/bin/sh
set -eu
exec hugo serve -v --bind tcck.localhost -D $@
