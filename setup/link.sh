#!/bin/bash

RCFILES="bashrc cshrc gdbinit gitconfig screenrc vimrc"

for f in $RCFILES; do
    DEST=~/.$f
    echo "[*] link $DEST ..."
    [ -f "$DEST" ] && rm -f "$DEST"
    ln -s ~/env_config/config/$f "$DEST"
done

echo "[*] link ipythonrc.py ..."
ln -s ~/env_config/config/ipythonrc.py ~/.ipython/profile_default/startup/ipythonrc.py
