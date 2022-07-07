#!/bin/bash

re='^[0-9]+$'
COUNTER=0
TASKS=0
DAY=0
TOTAL=0

task_print_day(){
	MIN=$(( COUNTER / 60 ))
	OUTPUT=$( date -d@$MIN -u +%H:%M:%S )
	printf "%s   %s  %s\n" $DAY $OUTPUT $TASKS
}

task_summary(){
	while read -r line
	do
		if [ -z "${line}" ]; then
			task_print_day
		elif [[ $line =~ $re ]] ; then
			COUNTER=$(( COUNTER + line ))
			TOTAL=$(( TOTAL + line ))
			TASKS=$(( TASKS + 1 ))
		else
			COUNTER=0
			TASKS=0
			DAY=$line
		fi
	done <<< $(calcurse -d -7 --format-apt='%d\n')

	task_print_day
	printf "Total:      %s\n" $( date -d@$TOTAL -u +%H:%M:%S )
}

task_summary


