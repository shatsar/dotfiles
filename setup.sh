#!/bin/sh
DOTFILES=$HOME/.dotfiles

if [ -f ~/.vimrc ]
	then
	mv ~/.vimrc ~/.vimrc-backup
fi

ln -s $DOTFILES/vimrc ~/.vimrc
