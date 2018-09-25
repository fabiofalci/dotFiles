#!/bin/sh

i3-msg workspace 1
i3-msg exec termite

i3-msg workspace 2

i3-msg workspace 10
i3-msg exec termite

i3-msg workspace 9
i3-msg exec "google-chrome-stable --profile-directory=Default"
sleep 2

i3-msg workspace 8
i3-msg exec "google-chrome-stable --profile-directory='Profile 1'"
sleep 1
i3-msg exec "google-chrome-stable --profile-directory=Default"
i3-msg layout tabbed
sleep 3

i3-msg workspace 7
i3-msg exec intellij-idea-ultimate-edition

