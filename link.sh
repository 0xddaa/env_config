#!/bin/bash

RCFILES="bashrc cshrc gdbinit gitconfig screenrc vimrc"

for f in $RCFILES; do
    DEST=~/.$f
	[ -f "$DEST" ] && rm -f "$DEST"
	ln -s ~/env_config/$f "$DEST"
done
