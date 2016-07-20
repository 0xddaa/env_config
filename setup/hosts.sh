#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "please run as root."
    exit
fi

echo "140.113.209.3   sqduty" >> /etc/hosts
echo "143.248.249.64  pwnkr" >> /etc/hosts
echo "104.199.161.89  gcp" >> /etc/hosts
echo "127.0.0.1       localhost $(hostname)" >> /etc/hosts
