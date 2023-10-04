#!/bin/bash

pacman -Syu --noconfirm
pacman -S --needed ansible git --noconfirm

mkdir -pv ~/.ansible/plugins/modules
curl -o ~/.ansible/plugins/modules/aur.py https://raw.githubusercontent.com/kewlfft/ansible-aur/master/plugins/modules/aur.py

cd ~/.config/dotFiles/ansible
ansible-playbook --ask-become-pass sys-install.yml --extra-vars "run_pacman=Y user=fabio ssh=Y dotFilesPath=~/.config/dotFiles"
