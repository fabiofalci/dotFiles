#!/bin/sh

#git clone https://github.com/fabiofalci/dotFiles.git ~/.config/dotFiles

# apk add ansible
# apk add zsh
ansible-playbook --ask-become-pass alpine-vm.yml --extra-vars "user=fabio dotFilesPath=~/.config/dotFiles"
#ansible-playbook --ask-become-pass alpine-vm.yml --extra-vars "user=fabio dotFilesPath=~/.config/dotFiles  dotFilesPrivatePath=~/.config/dotFiles-private"
#chsh fabio
