#!/bin/env sh
podman run -ti --rm -v .:/srv/jekyll:Z -e JEKYLL_ROOTLESS=1 -p 4000:4000 docker.io/jekyll/jekyll jekyll serve -l