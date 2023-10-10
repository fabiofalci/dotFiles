#!/bin/zsh

tail apts | grep $(date -v-1d +%m/%d/%Y)

