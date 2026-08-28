#!/usr/bin/env bash
# Installs /etc/security/faillock.conf from this repo's version.
# Needs sudo. Idempotent.
set -euo pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

sudo install -m 644 "$DIR/faillock.conf" /etc/security/faillock.conf
echo "Installed $DIR/faillock.conf -> /etc/security/faillock.conf"
