#!/usr/bin/env sh
podman run -ti --rm --name rhorga -v .:/srv/jekyll:Z -e JEKYLL_ROOTLESS=1 --network host docker.io/jekyll/jekyll jekyll serve -l
