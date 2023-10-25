#!/bin/bash
clear
rm /usr/local/sbin/*
wget -q https://raw.githubusercontent.com/myzid/v6/main/menu/menu.zip
unzip menu.zip
chmod +x menu/*
mv menu/* /usr/local/sbin
rm -rf menu.zip
rm -rf menu
rm -rf update.sh
clear
menu
