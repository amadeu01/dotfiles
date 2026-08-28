#!/usr/bin/env bash
# Applies GNOME idle/lock behavior via gsettings (dconf backend).
# idle-delay: seconds of inactivity before screen blanks/screensaver activates.
# lock-delay: extra seconds after that before a password is actually required.
# Net effect: screen locks visually fast, password only demanded after
# idle-delay + lock-delay of being away.
set -euo pipefail

IDLE_DELAY=900      # 15 min: screen blanks / visually locks
LOCK_DELAY=18000    # 5 hours: password required after this much extra time away

gsettings set org.gnome.desktop.session idle-delay "uint32 $IDLE_DELAY"
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.screensaver lock-delay "uint32 $LOCK_DELAY"

echo "idle-delay=$IDLE_DELAY lock-enabled=true lock-delay=$LOCK_DELAY applied."
