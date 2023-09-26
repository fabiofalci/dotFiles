#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/fabio/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install ansible

git clone https://github.com/fabiofalci/dotFiles.git ~/.config/dotFiles

cd ~/.config/dotFiles/ansible-macos

ansible-playbook install.yml --extra-vars dotFilesPath=~/.config/dotFiles
