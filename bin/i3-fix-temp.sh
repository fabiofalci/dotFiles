#!/bin/sh

replace(){
	sed s/hwmonX/hwmon$HWMON/g /home/fabio/env/i3/i3status-config.template > /home/fabio/.config/i3status/config 
}

HWMON=0

if [ -d "/sys/devices/platform/coretemp.0/hwmon/hwmon1" ]; then
	HWMON=1
elif [ -d "/sys/devices/platform/coretemp.0/hwmon/hwmon2" ]; then
	HWMON=2
elif [ -d "/sys/devices/platform/coretemp.0/hwmon/hwmon3" ]; then
	HWMON=3
elif [ -d "/sys/devices/platform/coretemp.0/hwmon/hwmon4" ]; then
	HWMON=4
fi

replace
