#! /usr/bin/env sh

# podman run -v .:/app:Z --rm --name zola-rohow-dev --workdir /app -p 8080:8080 ghcr.io/getzola/zola:v0.19.1 serve --interface 0.0.0.0 --port 8080 --base-url localhost

podman run -v .:/app:Z --rm --name zola-rohow-dev --workdir /app -p 8080:8080 ghcr.io/getzola/zola:v0.19.1 build
