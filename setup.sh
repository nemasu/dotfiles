#!/bin/bash

if [ -e ~/.screenrc ]; then
	echo "~/.screenrc already exists, exiting."
	exit 1
fi

if [ -e ~/.vim ]; then
	echo "~/.vim already exists, exiting."
	exit 1
fi

if [ -e ~/.vimrc ]; then
	echo "~/.vimrc already exists, exiting."
	exit 1
fi

current_dir=`pwd`
ln -s $current_dir/screen/screenrc ~/.screenrc 
ln -s $current_dir/vim      ~/.vim 
ln -s $current_dir/vim/vimrc    ~/.vimrc 
