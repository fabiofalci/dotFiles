#!/bin/bash

if [[ "$1" == "XF86AudioPrev" ]]; then
	#sconsify -command replay
	#echo "seek 0 1" > ~/.mplayer/pipe
	playerctl previous
elif [[ "$1" == "XF86AudioPlay" ]]; then
	#sconsify -command play_pause
	#echo "pause" > ~/.mplayer/pipe
	playerctl play-pause
elif [[ "$1" == "XF86AudioNext" ]]; then
	#sconsify -command next
	#echo "pt_step 1" > ~/.mplayer/pipe
	playerctl next
fi

