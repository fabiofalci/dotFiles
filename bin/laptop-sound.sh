#!/bin/sh


 pactl set-default-sink 'alsa_output.pci-0000_00_1b.0.analog-stereo' \
	&& pactl list short sink-inputs | cut -f1 | xargs -I {} pacmd move-sink-input {} 'alsa_output.pci-0000_00_1b.0.analog-stereo'


