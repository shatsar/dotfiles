#!/bin/sh
DOTFILES=$( dirname "${BASH_SOURCE[0]}" )

# loading aliases
for alias_file in $DOTFILES/aliases/*
do
	source $alias_file
done

if [ -f ~/.vimrc ]
	then
	mv ~/.vimrc ~/.vimrc-backup
fi

ln -s $DOTFILES/vimrc ~/.vimrc

export PATH=$PATH:$DOTFILES/bin
