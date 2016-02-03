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

	$ ln -s ~/env/i3/config ~/.i3/config
	$ sudo cp ~/env/i3/i3-temp.service /etc/systemd/system
	$ sudo systemctl enable i3-temp.service

	$ sudo ln -s /home/fabio/env/bash/global_profile.sh /etc/profile.d/global_profile.sh

	# swap alt & cmd
	$ echo options hid_apple swap_opt_cmd=1 | sudo tee -a /etc/modprobe.d/hid_apple.conf

	# f<n> by default and not multimedia keys
	$ echo options hid_apple fnmode=2 | sudo tee -a /etc/modprobe.d/hid_apple.conf

	# fix ` & ~ key
	$ echo options hid_apple iso_layout=0 | sudo tee -a /etc/modprobe.d/hid_apple.conf

	# clone jenv
	$ git clone https://github.com/gcuisinier/jenv.git ~/.jenv
