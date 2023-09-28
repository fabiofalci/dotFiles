#!/bin/bash

# termdown_run.sh 15:30 "My task"

now=$(date +%s)sec
task=$2

task=$(date "+%m/%d/%Y @ %H:%M -> %m/%d/%Y @ $1|$2")

echo $task >> ~/.local/share/calcurse/apts

termdown $1
#notify-send "Done" $(TZ=UTC date --date now-$now +%H:%M:%S)
#paplay /usr/share/sounds/freedesktop/stereo/complete.oga

printf "Added task: '$task'\n"
printf "Task total: %s\n" $(TZ=UTC date --date now-$now +%H:%M:%S)

#~/.config/dotFiles/bin/termdown_show.sh

