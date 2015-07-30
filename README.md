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

	$ sudo ln -s /home/fabio/env/bash/global_profile.sh /etc/profile.d/global_profile.sh

	$ echo options hid_apple swap_opt_cmd=1 | sudo tee -a /etc/modprobe.d/hid_apple.conf
	$ echo options hid_apple fnmode=2 | sudo tee -a /etc/modprobe.d/hid_apple.conf
	$ echo options hid_apple iso_layout=0 | sudo tee -a /etc/modprobe.d/hid_apple.conf
