#!/bin/bash

sudo pacman -Syu --noconfirm
sudo pacman -S ansible wget git --noconfirm

git clone https://github.com/kewlfft/ansible-aur.git ~/.ansible/plugins/modules/aur
git clone https://github.com/fabiofalci/env.git ~/env

cd env

ansible-playbook --ask-become-pass arch.yml
