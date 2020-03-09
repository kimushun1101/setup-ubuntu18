#!/bin/sh
cd `dirname $0`

sudo apt update

sudo apt install -y vim xsel
mkdir ~/.vimbackup

mv ~/setup-ubuntu18 ~/.setup
cd ~/.setup
ln -s .setup/vimrc ~/.vimrc
ln -s .setup/bash_aliases ~/.bash_aliases

source ~/.bashrc
