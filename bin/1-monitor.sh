#!/bin/sh

# disable all other monitors, just laptop now
xrandr --output VIRTUAL1 --off --output eDP1 --mode 2560x1600 --pos 0x0 --rotate normal --output DP1 --off --output HDMI2 --off --output HDMI1 --off --output DP2 --off

