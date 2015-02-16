Setting up
	
	$ git clone https://github.com/fabiofalci/env.git ~/tmp/env
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
