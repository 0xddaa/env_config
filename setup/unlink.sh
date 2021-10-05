#!/bin/bash

RCFILES="bashrc cshrc gdbinit gitconfig screenrc vimrc inputrc tmux.conf"

for f in $RCFILES; do
    DEST=~/.$f
    echo "[*] unlink $DEST ..."
    [ -L "$DEST" ] && unlink "$DEST"
done

echo "[*] unlink ipythonrc.py ..."
rm -f ~/.ipython/profile_default/startup/ipythonrc.py

echo "[*] unlink powershell.json ..."
rm -f ~/.config/powerline/config.json

echo "[*] unlink snippets ..."
unlink ~/.vim/UltiSnips
