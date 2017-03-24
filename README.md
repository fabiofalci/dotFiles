Setting up
	
	$ git clone https://github.com/fabiofalci/env.git ~/env
	$ echo "source ~/env/bash/bashrc" >> .bashrc

	# one one these
	$ echo "source ~/env/bash/defaults_macos" >> .bashrc
	$ echo "source ~/env/bash/defaults_linux" >> .bashrc

	$ ln -s ~/env/ack/ackrc ~/.ackrc

	$ ln -s ~/env/gitconfig/gitconfig .gitconfig
	$ ln -s ~/env/gitconfig/gitignore .gitignore_global

	$ ln -s ~/env/vim/vimrc .vimrc
	$ ln -s ~/env/vim/ .vim

	$ ln -s ~/env/bash/inputrc .inputrc

	$ ln -s ~/env/tmux/tmux.conf .tmux.conf

	$ ln -s ~/env/idea/ideavimrc .ideavimrc

	$ cat env/x/compose-key.sh > /etc/X11/xinit/xinitrc.d/60-compose-key.sh
	$ chmod 755 /etc/X11/xinit/xinitrc.d/60-compose-key.sh

	$ ln -s ~/env/i3/config ~/.i3/config
	$ cp ~/env/i3/i3status-config.template ~/.config/i3status/config
	$ sudo cp ~/env/i3/i3-temp.service /etc/systemd/system
	$ sudo systemctl enable i3-temp.service

	$ ln -s ~/env/i3/libinput-gestures.conf ~/.config/

	$ sudo ln -s /home/fabio/env/bash/global_profile.sh /etc/profile.d/global_profile.sh
	$ sudo ln -s /home/fabio/env/idea/98-idea.conf /etc/sysctl.d/98-idea.conf

	# swap alt & cmd
	$ echo options hid_apple swap_opt_cmd=1 | sudo tee -a /etc/modprobe.d/hid_apple.conf

	# f<n> by default and not multimedia keys
	$ echo options hid_apple fnmode=2 | sudo tee -a /etc/modprobe.d/hid_apple.conf

	# fix ` & ~ key
	$ echo options hid_apple iso_layout=0 | sudo tee -a /etc/modprobe.d/hid_apple.conf

	# clone jenv
	$ git clone https://github.com/gcuisinier/jenv.git ~/.jenv
	$ jenv enable-plugin export
 	$ jenv enable-plugin maven

	# trackpad
	$ sudo ln -s ~/env/x/90-libinput.conf /etc/X11/xorg.conf.d/

	# subl
	$ ln -s ~/env/subl/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/
	$ ln -s ~/env/subl/Default\ \(Linux\).sublime-keymap ~/.config/sublime-text-2/Packages/User/

	# ssh
	$ ln -s ~/env/ssh/config ~/.ssh/config

