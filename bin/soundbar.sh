#!/bin/sh


pactl set-default-sink 'alsa_output.usb-Dell_Dell_AC511_USB_SoundBar-00.analog-stereo' \
	&& pactl list short sink-inputs | cut -f1 | xargs -I {} pacmd move-sink-input {} 'alsa_output.usb-Dell_Dell_AC511_USB_SoundBar-00.analog-stereo'

