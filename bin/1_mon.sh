#!/bin/sh
xrandr \
	--output VIRTUAL1 --off \
	--output eDP1 --off \
	--output DP1 --off \
	--output HDMI2 --off \
	--output HDMI1 --off \
	--output DP2 --primary --mode 1680x1050 --pos 0x0 --rotate normal
