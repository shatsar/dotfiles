#!/bin/sh
DOTFILES=$HOME/.dotfiles

# loading aliases
for alias_file in $DOTFILES/aliases/*
do
	source $alias_file
done

# loading variables
source $DOTFILES/variables

if [ -f ~/.vimrc ]
	then
	mv ~/.vimrc ~/.vimrc-backup
fi

ln -s $DOTFILES/vimrc ~/.vimrc

export PATH=$PATH:$DOTFILES/bin
