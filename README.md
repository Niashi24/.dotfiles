# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.
## bin
This is a directory that contains bash scripts
## etc
This is a directory that contains bash\_rc and vimrc files
##bin/linux.sh
This is a script that replaces the current .vimrc with the one in the etc directory, renames the original .vimrc to .bup\_vimrc, creates the .TRASH directory, and adds the command to use the bashrc\_custom on startup.
##bin/cleanup.sh
This is a script that cleans up/reverses the result(s) of the linux.sh script
##etc/bashrc\_custom
This is a custom bashrc that has various aliases to help with development
##etc/vimrc
This is a custom vimrc that has various features enabled to make vim better
##Makefile
This is a makefile that runs the linux.sh and cleanup.sh scripts
