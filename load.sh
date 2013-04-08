#!/bin/sh
DOTFILES=$( dirname "${BASH_SOURCE[0]}" )

# loading aliases
source $DOTFILES/aliases/*

if [ -f ~/.vimrc ]
	then
	mv ~/.vimrc ~/.vimrc-backup
	ln -s $DOTFILES/vimrc ~/.vimrc
fi
