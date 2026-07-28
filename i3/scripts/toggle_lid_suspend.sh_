#!/bin/bash

CONFIG_FILE="/etc/systemd/logind.conf"
STATUS=$(grep "^HandleLidSwitch=" "$CONFIG_FILE" | cut -d'=' -f2)

if [[ "$STATUS" == "suspend" ]]; then
    sudo sed -i 's/^HandleLidSwitch=suspend/HandleLidSwitch=ignore/' "$CONFIG_FILE"
    echo "Lid close suspend disabled."
else
    sudo sed -i 's/^HandleLidSwitch=ignore/HandleLidSwitch=suspend/' "$CONFIG_FILE"
    echo "Lid close suspend enabled."
fi

sudo systemctl restart systemd-logind

