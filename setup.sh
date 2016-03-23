#!/bin/bash

GREEN='\033[0;32m'
LIME='\033[1;32m'
MAGENTA='\033[1;35m'
DEFAULT='\033[0m'

function comment {
  echo
  echo -e "${LIME}$1${DEFAULT}"
  echo ========================================
}

comment "Checking dependencies..."
echo -e "${MAGENTA}Brew${DEFAULT} (0.9.5)"
echo "  `brew -v`"

echo -e "${MAGENTA}Ruby${DEFAULT} (2.x+)"
echo "  `ruby -v`"

echo -e "${MAGENTA}MacVim${DEFAULT} (7.x +ruby)"
echo "  `mvim --version | head -n 1`"
echo "  `mvim --version | grep ruby`"

echo
echo -n "Everything look OK? [y/n] "
read -n 1 answer
echo

if [ "$answer" = "y" ] || [ "$answer" = "Y" ]
then
	echo "Setting up..."
else
	echo "Missing brew and/or mvim, try the following:"
	echo
  echo -e "  /usr/bin/ruby -e \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)\""
	echo -e "  brew install macvim"
	echo
	exit 1
fi

comment "Creating directories"
mkdir -p ~/src
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/colors

comment "Copying bashrc"
cp ~/aardvarks/.bashrc ~/
cp ~/aardvarks/.bash_profile ~/

comment "Copying vimrc"
cp ~/aardvarks/.vimrc ~/

comment "Installing Smyck"
git clone https://github.com/hukl/Smyck-Color-Scheme/ ~/src/smyck || echo Skipping...
cp ~/src/smyck/smyck.vim ~/.vim/colors

comment "Installing Pathogen"
git clone https://github.com/tpope/vim-pathogen ~/src/pathogen || echo Skipping...
cp ~/src/pathogen/autoload/pathogen.vim ~/.vim/autoload

comment "Installing NERD Tree"
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

comment "Installing Command-T"
git clone https://github.com/wincent/command-t.git ~/.vim/bundle/command-t
cd ~/.vim/bundle/command-t
rake make
