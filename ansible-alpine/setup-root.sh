#!/bin/sh

apk upgrade
apk add ansible

ansible-playbook --ask-become-pass install-user.yml --extra-vars "user=fabio ssh=Y dotFilesPath=~/.config/dotFiles"
# ansible-playbook --ask-become-pass install-user.yml --extra-vars "user=fabio ssh=Y dotFilesPath=~/.config/dotFiles dotFilesPrivatePath=~/.config/dotFiles-private"
