#!/bin/zsh

tmux new -s dev -d
tmux new -s p -c ~/p -d
tmux new -s termdown -c ~/.local/share/calcurse -d
