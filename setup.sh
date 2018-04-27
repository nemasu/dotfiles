#!/bin/bash

current_dir=`pwd`

if [ -e ~/.screenrc ]; then
	echo "~/.screenrc already exists, skipping..."
else
    ln -vs $current_dir/screen/screenrc ~/.screenrc 
fi

if [ -e ~/.vim ]; then
	echo "~/.vim already exists, skipping..."
else
    ln -vs $current_dir/vim      ~/.vim 
fi

if [ -e ~/.vimrc ]; then
	echo "~/.vimrc already exists, skipping..."
else
    ln -vs $current_dir/vim/vimrc    ~/.vimrc
fi
