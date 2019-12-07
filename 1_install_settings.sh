#!/bin/sh
cd `dirname $0`

LANG=C xdg-user-dirs-gtk-update

sudo sed -i.bak -e 's|http://archive|http://jp.archive|' /etc/apt/sources.list
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt install -y vim terminator
mkdir ~/.vimbackup

# mkdir -p ~/.config/terminator
# cp -f terminator_config ~/.config/terminator/config

mv ~/setup-ubuntu18 ~/.setup
ln -s .setup/vimrc ~/.vimrc
ln -s .setup/gvimrc ~/.gvimrc
ln -s .setup/bash_aliases ~/.bash_aliases

source ~/.bashrc
~/.setup/startup.sh
gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps']"

gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds true
