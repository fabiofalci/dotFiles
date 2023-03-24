#!/bin/bash

workspace=$(i3-msg -t get_workspaces | jq '.[] | select(.focused).num')
if [[ "$workspace" == "0" ]]; then
  /home/fabio/.config/dotFiles/i3/scripts/tmux_prod.sh
  /home/fabio/.config/dotFiles/i3/scripts/tmux_dev.sh
elif [[ "$workspace" == "1" ]]; then
  /home/fabio/.config/dotFiles/i3/scripts/work_chrome.sh
elif [[ "$workspace" == "2" ]]; then
  /home/fabio/.config/dotFiles/i3/scripts/messaging.sh
elif [[ "$workspace" == "3" ]]; then
  idea-ultimate &
elif [[ "$workspace" == "4" ]]; then
  /home/fabio/.config/dotFiles/i3/scripts/tmux_p.sh
fi
