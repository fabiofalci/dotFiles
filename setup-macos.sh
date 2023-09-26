#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/fabio/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install ansible

git clone https://github.com/fabiofalci/dotFiles.git ~/.config/dotFiles



#cd env/ansible
#ansible-playbook --ask-become-pass arch-vm.yml --extra-vars "run_pacman=Y run_aur=Y ssh=Y user=fabio dotFilesPath=~/.config/dotFiles"
#ansible-playbook --ask-become-pass sys-install.yml --extra-vars "run_pacman=Y run_aur=Y user=fabio dotFilesPath=~/.config/dotFiles"
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
