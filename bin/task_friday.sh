#!/bin/zsh

tail apts | grep $(date -v-3d +%m/%d/%Y)

