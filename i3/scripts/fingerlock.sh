#!/bin/bash

# Start authentication daemon in background
(
  while true; do
    if fprintd-verify $USER; then
      # Kill i3lock when fingerprint is verified
      pkill -9 i3lock
      break
    fi
    sleep 0.5
  done
) &

# Start i3lock with custom settings
i3lock -n -e \
  --indicator \
  --ring-width=4 \
  --inside-color=00000000 \
  --ring-color=ffffffff \
  --line-uses-inside \
  --keyhl-color=d23c3dff \
  --bshl-color=d23c3dff \
  --separator-color=00000000 \
  --verif-color=ffffffff \
  --wrong-color=d23c3dff \
  --modif-color=d23c3dff \
  --layout-color=ffffffff
