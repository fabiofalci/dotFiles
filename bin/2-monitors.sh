#!/bin/sh

# when going to 2 monitors remove the scale so xranr can work
/home/fabio/env/bin/lunscale.sh

# enable all 3 monitors
xrandr --output VIRTUAL1 --off --output eDP1 --mode 2560x1600 --pos 0x1080 --rotate normal --output DP1 --mode 2560x1080 --pos 0x0 --rotate normal --output HDMI2 --off --output HDMI1 --off --output DP2 --off

# scale laptop monitor back 70% because macbook monitor resolution is tiny
/home/fabio/env/bin/lscale.sh

