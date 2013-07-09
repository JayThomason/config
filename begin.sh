#!/bin/bash
# Configuration script. Run as root.
# Log out and log back in afterwards to use zsh and vi
# with theme and syntax-highlighting.

cd;
lsb=`lsb_release -i`;
if [ "$lsb" == "Distributor ID:	Ubuntu" ]; then
	# Distro is Ubuntu, so we can use apt-get install
	# Install git
    echo "\nInstalling git and zsh.\n"
	apt-get install git -y;
    apt-get install zsh -y;

	# Install oh-my-zsh
	echo "\nInstalling oh-my-zsh\n";
	curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh;
	chown -R ubuntu .oh-my-zsh;

	# Install zsh-syntax-highlighting
	echo "\nInstalling zsh-syntax-highlighting\n";
	cd ~/.oh-my-zsh/plugins;
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git;
	chown -R ubuntu zsh-syntax-highlighting;
    chsh -s /bin/zsh ubuntu;
	cd;

	# Install solarized for vim
	echo "\nInstalling solarized for vim\n";
	git clone https://github.com/altercation/vim-colors-solarized.git;
	mkdir .vim;
	mkdir .vim/colors;
	mv vim-colors-solarized/colors/solarized.vim .vim/colors/;
	chown -R ubuntu .vim;
	rm -rf vim-colors-solarized;

	# Clone config repo
	echo "\nCloning config repo and linking config files\n";
	git clone https://github.com/JayThomason/config.git;
	cd; mv config/ .config/;
	chown -R ubuntu .config;

	# Remove .zshrc
	rm -f .zshrc .vimrc
	
	# Link configuration files from .config/
	ln -s .config/.zshrc;
	ln -s .config/.vimrc;
    cd .oh-my-zsh/themes;
    ln -s ~/.config/mrtazz-edit.zsh-theme;
    cd;

    echo "\nConfig finished. Log out and log back in to begin using zsh.\n"
fi
exit;
