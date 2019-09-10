#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "please run as root."
    exit
fi

pushd ~/env_config/setup
./package.sh
./link.sh
./tool.sh
./hosts.sh
popd
