#!/bin/bash

RCFILES="bashrc cshrc gdbinit gitconfig screenrc vimrc tmux.conf"

for f in $RCFILES; do
    DEST=~/.$f
    echo "[*] link $DEST ..."
    [ -f "$DEST" ] && rm -f "$DEST"
    ln -s ~/env_config/config/$f "$DEST"
done

echo "[*] link ipythonrc.py ..."
DEST=~/.ipython/profile_default/startup/ipythonrc.py
[ -f "$DEST" ] && rm -f "$DEST"
ln -s ~/env_config/config/ipythonrc.py "$DEST"
