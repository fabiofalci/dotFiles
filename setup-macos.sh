#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/fabio/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install ansible

git clone https://github.com/fabiofalci/dotFiles.git ~/.config/dotFiles

cd ~/.config/dotFiles/ansible-macos
ansible-playbook install-conf.yml --extra-vars dotFilesPath=~/.config/dotFiles

# set up ssh keys and unlock dotFiles-private

git clone git@bitbucket.org:fabiofalci/dotfiles-private.git ~/.config/dotFiles-private
ansible-playbook install-private.yml --extra-vars "dotFilesPath=~/.config/dotFiles dotFilesPrivatePath=~/.config/dotFiles-private"
ansible-playbook install-packages.yml --extra-vars dotFilesPath=~/.config/dotFiles
ansible-playbook install-conf.yml --extra-vars "after_install=Y dotFilesPath=~/.config/dotFiles"
