#!/bin/bash

if [[ "$1" == "XF86AudioPrev" ]]; then
	/home/fabio/bin/sconsify -command replay
	echo "seek 0 1" > /home/fabio/.mplayer/pipe
elif [[ "$1" == "XF86AudioPlay" ]]; then
	/home/fabio/bin/sconsify -command play_pause
	echo "pause" > /home/fabio/.mplayer/pipe
elif [[ "$1" == "XF86AudioNext" ]]; then
	/home/fabio/bin/sconsify -command next
	echo "pt_step 1" > /home/fabio/.mplayer/pipe
fi

