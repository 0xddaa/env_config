#!/bin/bash

RCFILES="bashrc cshrc gdbinit gitconfig screenrc vimrc"

for f in $RCFILES; do
    DEST=~/.$f
	[ -L "$DEST" ] && unlink "$DEST"
done
