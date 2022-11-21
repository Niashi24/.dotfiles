#!/bin/bash
#set default program to run this script

#remove .vimrc file from home directory
rm -f ~/.vimrc
#remove "source ~/.dotfiles/bashrc_custom" from .bashrc
sed -i '/source ~\/\.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc
#remove trash directory
rm -rf ~/.TRASH
