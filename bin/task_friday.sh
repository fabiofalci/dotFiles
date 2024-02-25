#!/bin/zsh

tail ~/.local/share/calcurse/apts | grep $(date -v-3d +%m/%d/%Y)

