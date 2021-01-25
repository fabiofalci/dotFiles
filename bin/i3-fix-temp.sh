#!/bin/sh

replace(){
	sed s/hwmonX/hwmon$HWMON/g ~/env/i3/i3status-config-xps.template > ~/.config/i3status/config 
}

HWMON=0

for file in /sys/devices/platform/coretemp.0/hwmon/*; do
	name=$(basename "$file")
	HWMON=${name:5}
done

replace
