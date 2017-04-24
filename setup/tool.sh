#!/bin/bash

mkdir -p ~/tools
git clone http://github.com/0xddaa/ctfcode ~/code

# gdb
git clone http://github.com/scwuaptx/Pwngdb ~/tools/Pwngdb
git clone https://github.com/0xddaa/pwndbg ~/tools/pwndbg
pushd ~/tools/pwndbg
./setup.sh
popd
