#!/bin/bash

vimrc_file="~/.vimrc"
vim_dir="~/.vim"

if [ -f "$vimrc_file" ]
then
	mv "$vimrc_file" "$vimrc_file".old
fi

if [ -f "$vim_dir" ]
then
	mv "$vim_dir" "$vim_dir".old
fi

ln -s "$PWD" "$vim_dir"
ln -s "$PWD"/vimrc "$vimrc_file"
