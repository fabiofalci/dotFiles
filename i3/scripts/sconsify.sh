#!/bin/bash
google-chrome-stable --profile-directory=Default &
sleep 1
alacritty -e ~/bin/_sconsify
