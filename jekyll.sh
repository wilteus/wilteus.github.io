#!/bin/bash
#
# See https://github.com/Starefossen/docker-github-pages
#
set -e
#
# Fix users
#
docker run -it --rm -v "$PWD":/usr/src/app -p 4000:4000 starefossen/github-pages "$@"
