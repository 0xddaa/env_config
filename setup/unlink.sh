#!/bin/bash

echo "[*] Change directory to ~/env_config/config..."
cd ~/env_config/config 2>&1 > /dev/null
RCFILES="bashrc cshrc gdbinit gitconfig screenrc vimrc"

for f in $RCFILES; do
    DEST=~/.$f
	[ -L "$DEST" ] && unlink "$DEST"
done
echo "[*] Change back"
cd - 2>&1 > /dev/null
