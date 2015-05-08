#!/bin/sh

# when going to 3 monitors remove the scale so xranr can work
/home/fabio/env/bin/lunscale.sh

# enable all 3 monitors
xrandr --output VIRTUAL1 --off --output eDP1 --mode 2560x1600 --pos 0x256 --rotate normal --output DP1 --off --output HDMI2 --mode 1920x1200 --pos 2184x0 --rotate normal --output HDMI1 --mode 1920x1200 --pos 4104x0 --rotate normal --output DP2 --off

# scale laptop monitor back 70% because macbook monitor resolution is tiny
/home/fabio/env/bin/lscale.sh

# move xfce panel to second monitor
xfconf-query -c xfce4-panel -p /panels/panel-1/output-name -s HDMI2
xfconf-query -c xfce4-panel -p /panels/panel-2/output-name -s HDMI2

