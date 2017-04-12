#!/bin/bash

RCFILES="bashrc cshrc gdbinit gitconfig screenrc vimrc tmux.conf"

for f in $RCFILES; do
    DEST=~/.$f
    echo "[*] unlink $DEST ..."
    [ -L "$DEST" ] && unlink "$DEST"
done

echo "[*] unlink ipythonrc.py ..."
rm -f ~/.ipython/profile_default/startup/ipythonrc.py
