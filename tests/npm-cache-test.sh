#!/usr/bin/env bash
set -e

bash="docker compose run -e --rm node sh"
npm="docker compose run -e --rm node npm"

## Clear cache
#${bash} -c "find /var/npm-cache -mindepth 1 -maxdepth 1 -exec rm -rf {} + || true"

## Clear working directory
${bash} -c "find . -mindepth 1 -maxdepth 1 -exec rm -rf {} + || true"

## Install packages
${npm} install is-odd sass @angular/material
