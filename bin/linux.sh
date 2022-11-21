#!/bin/bash
#set default program to run script
#gets operating system and stores it in OS var
OS=$(uname)
#check if OS is Linux
if [ $OS = "Linux" ]
then
	#create trash directory if it doesn't exist
	mkdir -p ~/.TRASH
	#if the .vimrc file exists
	if test -f "~/.vimrc"; then
		#rename the file to ".bup_vimrc"
		mv ~/.vimrc ~/.bup_vimrc
		#log that the .vimrc file was changed
		echo "Current .vimrc file was changed to .bup_vimrc" >> linuxsetup.log
	fi
	#overwrite/create the .vimrc with the vimrc in etc
	cat ./etc/vimrc > ~/.vimrc
	#adds the command to run the bashrc_custom whenever the user logs in
	echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
else #if OS is not linux
	#log error to a log file
	echo "Error! Operating system must be Linux!" >> linuxsetup.log
	#exit script
	exit
fi #end if
