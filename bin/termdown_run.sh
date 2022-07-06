#!/bin/bash

# termdown_run.sh 15:30 "My task"

now=$(date +%s)sec
task=$2

task=$(date "+%m/%d/%Y @ %H:%M -> %m/%d/%Y @ $1|$2")

#echo $task >> ~/.local/share/calcurse/apts

#termdown.py $1
notify-send "Done" $(TZ=UTC date --date now-$now +%H:%M:%S)
paplay /usr/share/sounds/freedesktop/stereo/complete.oga

printf "Task total: %s\n" $(TZ=UTC date --date now-$now +%H:%M:%S)

#calcurse -d -1 --format-apt='%d\n'

re='^[0-9]+$'
COUNTER=0
DAY=0
TOTAL=0

while read -r line
do
	if [ -z "${line}" ]; then
		MIN=$(( COUNTER / 60 ))
		OUTPUT=$( date -d@$MIN -u +%H:%M:%S )
		printf "$DAY   $OUTPUT\n"
	elif [[ $line =~ $re ]] ; then
		COUNTER=$(( COUNTER + line ))
		TOTAL=$(( TOTAL + line ))
	else
		COUNTER=0
		DAY=$line
	fi
done <<< $(calcurse -d -7 --format-apt='%d\n')

MIN=$(( COUNTER / 60 ))
OUTPUT=$( date -d@$MIN -u +%H:%M:%S )
printf "$DAY   $OUTPUT\n"
printf "Total:      %s\n", $( date -d@$TOTAL -u +%H:%M:%S )

