#!/bin/bash

#git clone https://github.com/fabiofalci/dotFiles.git ~/.config/dotFiles

mkdir -pv ~/.ansible/plugins/modules
curl -o ~/.ansible/plugins/modules/aur.py https://raw.githubusercontent.com/kewlfft/ansible-aur/master/plugins/modules/aur.py

cd ~/.config/dotFiles/ansible
#ansible-playbook --ask-become-pass user.yml --extra-vars "run_pacman=Y run_aur=Y ui=Y user=fabio profile=shark dotFilesPath=~/.config/dotFiles"
ansible-playbook --ask-become-pass user.yml --extra-vars "run_pacman=Y run_aur=Y ui=Y user=fabio profile=trout ssh=Y dotFilesPath=~/.config/dotFiles dotFilesPrivatePath=~/.config/dotFiles-private"

#ansible-playbook --ask-become-pass arch-vm.yml --extra-vars "run_pacman=Y run_aur=Y ssh=Y user=fabio dotFilesPath=~/.config/dotFiles"
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
