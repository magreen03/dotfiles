#!/bin/bash

echo "Setting up Symlink files..."

#ln -s ~/dotfiles/vimrc ~/.vimrc
#echo "Finished vimrc symlink"
#ln -s ~/dotfiles/vim ~/.vim
#echo "Finished vim directory symlink"
#ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
#echo "Finished tmux symlink"

# Symlink bash profile
ln -s ~/dotfiles/bash_profile ~/.bash_profile
# Symlink bash prompt
ln -s ~/dotfiles/bash_prompt ~/.bash_prompt
