#!/bin/bash

echo "Setting up custom bin scripts"
mkdir ~/bin
git clone git@github.com:magreen03/axial_scripts.git ~/bin


echo "Setting up Symlink files..."
ln -s ~/dotfiles/vimrc ~/.vimrc
echo "Finished vimrc symlink"
ln -s ~/dotfiles/vim ~/.vim
echo "Finished vim directory symlink"
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
echo "Finished tmux symlink"
ln -s ~/dotfiles/bash_aliases ~/.bash_aliases
echo "Finished bash_aliases symlink"
ln -s ~/dotfiles/bash_prompt ~/.bash_prompt 
echo "Finished bash_prompt symlink"
