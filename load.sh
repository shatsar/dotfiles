#!/bin/sh
DOTFILES=$HOME/.dotfiles

# loading aliases
for alias_file in $DOTFILES/aliases/*
do
	source $HOME/$alias_file
done

if [ -f ~/.vimrc ]
	then
	mv ~/.vimrc ~/.vimrc-backup
fi

ln -s $DOTFILES/vimrc ~/.vimrc

export PATH=$PATH:$DOTFILES/bin
