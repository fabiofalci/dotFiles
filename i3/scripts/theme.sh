#!/bin/bash

style=$1
dark_theme=doom_one
light_theme=solarized_light

if [ "$style" == "Dark" ]; then
  sed -i "s/$light_theme/$dark_theme/" ~/.config/alacritty/alacritty.toml
else
  sed -i "s/$dark_theme/$light_theme/" ~/.config/alacritty/alacritty.toml
fi
