#!/bin/sh

replace(){
	sed s/hwmonX/hwmon$HWMON/g ~/env/i3/i3status-config-$MACHINE.template > ~/.config/i3status/config 
}

HWMON=0
MACHINE=$1

for file in /sys/devices/platform/coretemp.0/hwmon/*; do
	name=$(basename "$file")
	HWMON=${name:5}
done

echo "test"

replace
