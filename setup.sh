#!/bin/bash

function comment {
  echo ========================================
  echo $1
  echo ========================================
}

comment "Creating directories"
mkdir -p ~/src
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle

comment "Copying .bashrc"
cp ~/aardvarks/.bashrc ~/
cp ~/aardvarks/.bash_profile ~/

comment "Copying .vimrc"
cp ~/aardvarks/.vimrc ~/

comment "Installing Smyck"
git clone https://github.com/hukl/Smyck-Color-Scheme/ ~/src/smyck || echo Skipping...

comment "Installing Pathogen"
git clone https://github.com/tpope/vim-pathogen ~/src/pathogen || echo Skipping...
cp ~/src/pathogen/autoload/pathogen.vim ~/.vim/autoload

comment "Installing Command-T"
git clone https://github.com/wincent/command-t.git ~/.vim/bundle/command-t
cd ~/.vim/bundle/command-t
rake make
