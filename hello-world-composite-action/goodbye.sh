#/bin/bash
export CONCURRENCY="$(nproc)"
export MAKEFLAGS="-j \${CONCURRENCY}"
export BEEGFS_VERSION="\$(test -n "\${CI_COMMIT_TAG}" && echo "\${CI_COMMIT_TAG}" || git describe --tags --match '*.*' --abbrev=8)"
export GPG_TTY=\$(tty)
echo "$CONCURRENCY"
echo "$MAKEFLAGS"
echo "$BEEGFS_VERSION"

