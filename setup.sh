#!/bin/bash

sudo pacman -Syu --noconfirm
sudo pacman -S ansible git --noconfirm

# didnt work last time
#git clone https://github.com/kewlfft/ansible-aur.git ~/.ansible/plugins/modules/aur

# this one worked
mkdir ~/.ansible/plugins/modules
curl -o ~/.ansible/plugins/modules/aur.py https://raw.githubusercontent.com/kewlfft/ansible-aur/master/plugins/modules/aur.py

git clone https://github.com/fabiofalci/dotFiles.git ~/.config/dotFiles

cd ~/.config/dotFiles/ansible
ansible-playbook --ask-become-pass sys-install.yml --extra-vars "run_pacman=Y run_aur=N user=fabio ssh=Y dotFilesPath=~/.config/dotFiles"
#ansible-playbook --ask-become-pass arch-vm.yml --extra-vars "run_pacman=Y run_aur=Y ssh=Y user=fabio dotFilesPath=~/.config/dotFiles"
#ansible-playbook --ask-become-pass user-install.yml --extra-vars "run_pacman=Y run_aur=Y user=fabio dotFilesPath=~/.config/dotFiles"
#ansible-playbook --ask-become-pass user-install.yml --extra-vars "user=fabio profile=$HOSTNAME-ff dotFilesPath=~/.config/dotFiles"


#when: dotFiles is defined
#  dotFilesPath=~/.config/dotFiles"
#when: profile is defined
#  profile=$HOSTNAME-f
#when: run_aur is defined
#  run_aur=Y
#when: run_pacman is defined
#  run_pacman=Y
#when: ssh is defined
#  ssh=Y
#when: syncthingservice is defined
#  syncthingservice=Y
#when: ui is defined
#  ui=Y
#when: user is defined
#  user=fabio
