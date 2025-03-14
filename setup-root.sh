#!/bin/bash

pacman -Syu --noconfirm
pacman -S --needed ansible git base-devel --noconfirm

mkdir -pv ~/.ansible/plugins/modules
curl -o ~/.ansible/plugins/modules/aur.py https://raw.githubusercontent.com/kewlfft/ansible-aur/master/plugins/modules/aur.py

cd ~/.config/dotFiles/ansible
ansible-playbook root-install.yml --extra-vars "run_pacman=Y"
ansible-playbook install-user.yml --extra-vars "user=fabio ssh=Y dotFiles=Y dotFilesPath=~/.config/dotFiles"
ansible-playbook install-user.yml --extra-vars "user=fabio ssh=Y dotFiles=Y dotFilesPath=~/.config/dotFiles dotFilesPrivatePath=~/.config/dotFiles-private"
