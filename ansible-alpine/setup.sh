#!/bin/bash

#git clone https://github.com/fabiofalci/dotFiles.git ~/.config/dotFiles

apk add ansible
apk add zsh
#ansible-playbook --ask-become-pass alpine-vm.yml --extra-vars "run_pacman=Y run_aur=Y ui=Y user=fabio profile=shark dotFilesPath=~/.config/dotFiles"
chsh fabio
