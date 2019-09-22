#!/bin/sh
cd `dirname $0`

LANG=C xdg-user-dirs-gtk-update

sudo sed -i.bak -e 's|http://archive|http://jp.archive|' /etc/apt/sources.list
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt install -y vim terminator
mkdir ~/.vimbackup

cp -f terminator_config ~/.config/terminator/config

mv ~/setup-ubuntu18 ~/.setup
ln -s .setup/vimrc ~/.vimrc
ln -s .setup/gvimrc ~/.gvimrc
ln -s .setup/bash_aliases ~/.bash_aliases
ln -s .setup/Xmodmap ~/.Xmodmap

source ~/.bashrc
~/.setup/startup.sh
