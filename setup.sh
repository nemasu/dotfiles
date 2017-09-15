#!/bin/bash

current_dir=`pwd`

if [ -e ~/.Xresources ]; then
	echo "~/.Xresources already exists, skipping..."
else
    ln -vs $current_dir/X/Xresources ~/.Xresources
fi


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

if [ ! -e ~/.local/share/fonts ]; then
    mkdir -p ~/.local/share/fonts
fi

IFS=$'\n'
fonts=('Knack Regular Nerd Font Complete Mono')

for font in ${fonts[@]}; do

    if [ -e ~/.local/share/fonts/$font.ttf ]; then
        echo "$font font exists already, skipping..."
    else
        ln -vs "$current_dir/fonts/$font.ttf" ~/.local/share/fonts
    fi
done


