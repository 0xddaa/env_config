#!/bin/bash

RCFILES="bashrc cshrc gdbinit gitconfig screenrc vimrc"

for f in $RCFILES; do
    DEST=~/.$f
    echo "[*] unlink $DEST ..."
    [ -L "$DEST" ] && unlink "$DEST"
done
