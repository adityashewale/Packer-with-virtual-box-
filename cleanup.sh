#!/usr/bin/env bash
set -o errexit -o nounset -o xtrace -o pipefail
shopt -s inherit_errexit nullglob dotglob

rm -rf "${HOME:?}"/* "${GITHUB_WORKSPACE:?}"/*
