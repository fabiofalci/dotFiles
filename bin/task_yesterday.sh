#!/bin/zsh

tail ~/.local/share/calcurse/apts | grep $(date -v-1d +%m/%d/%Y)

