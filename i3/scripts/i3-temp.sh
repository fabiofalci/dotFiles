#!/bin/bash
systemctl --user start i3-temp.service
i3-msg reload
i3-msg restart
