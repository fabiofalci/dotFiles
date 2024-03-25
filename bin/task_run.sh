#!/bin/zsh

# termdown_run.sh 15:30 "My task"

if [ "$#" -ne 2 ]; then
    echo "Missing arguments"
    exit 1
fi

now=$(date +%s)S
task=$2

task=$(date "+%m/%d/%Y @ %H:%M -> %m/%d/%Y @ $1|$2")

echo $task >> ~/.local/share/calcurse/apts
termdown $1

message="Done $(TZ=UTC date -v-$now +%H:%M:%S)"
osascript <<EOD
 display notification "$message" sound name ""
EOD

printf "Added task: '$task'\n"
printf "Task total: %s\n" $(TZ=UTC date -v-$now +%H:%M:%S)

~/.config/dotFiles/bin/task_show.sh

