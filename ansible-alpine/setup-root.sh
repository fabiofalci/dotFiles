#!/bin/bash

apk upgrade
apk add ansible

cd ~/.config/dotFiles/ansible
ansible-playbook --ask-become-pass install-user.yml --extra-vars "user=fabio ssh=Y dotFilesPath=~/.config/dotFiles"
# ansible-playbook --ask-become-pass install-user.yml --extra-vars "user=fabio ssh=Y dotFilesPath=~/.config/dotFiles dotFilesPrivatePath=~/.config/dotFiles-private"
