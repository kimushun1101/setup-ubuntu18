#!/bin/sh
cd `dirname $0`

sudo apt update

sudo apt install -y vim
mkdir ~/.vimbackup

mv ~/setup-ubuntu18 ~/.setup
ln -s .setup/vimrc ~/.vimrc
ln -s .setup/gvimrc ~/.gvimrc
ln -s .setup/bash_aliases ~/.bash_aliases

source ~/.bashrc
