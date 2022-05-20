#!/bin/bash

sudo pacman -Syu --noconfirm
sudo pacman -S ansible git --noconfirm

# didnt work last time
#git clone https://github.com/kewlfft/ansible-aur.git ~/.ansible/plugins/modules/aur

# this one worked
mkdir ~/.ansible/plugins/modules
curl -o ~/.ansible/plugins/modules/aur.py https://raw.githubusercontent.com/kewlfft/ansible-aur/master/plugins/modules/aur.py

git clone https://github.com/fabiofalci/env.git ~/env

#cd env/ansible
#ansible-playbook --ask-become-pass arch-vm.yml
#ansible-playbook --ask-become-pass sys-install.yml --extra-vars "run_pacman=Y run_aur=Y user=fabio dotFilesPath=~/.config/env"
#ansible-playbook --ask-become-pass user-install.yml --extra-vars "run_pacman=Y run_aur=Y user=fabio dotFilesPath=~/.config/env"
#ansible-playbook --ask-become-pass user-install.yml --extra-vars "user=fabio profile=$HOSTNAME-ff dotFilesPath=~/.config/env"
