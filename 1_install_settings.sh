#!/bin/sh
cd `dirname $0`

sudo apt update

xdg-open https://www.google.com/chrome/
xdg-open https://code.visualstudio.com/docs/?dv=linux64_deb
xdg-open https://slack.com/intl/ja-jp/downloads/linux

sudo apt install -y vim terminator xsel
mkdir ~/.vimbackup

mkdir -p ~/.config/terminator
cp -f terminator_config ~/.config/terminator/config

mv ~/setup-ubuntu18 ~/.setup
ln -s .setup/vimrc ~/.vimrc
ln -s .setup/gvimrc ~/.gvimrc
ln -s .setup/bash_aliases ~/.bash_aliases
ln -s .setup/Xmodmap ~/.Xmodmap
echo "xmodmap ~/.Xmodmap" >> ~/.bashrc

source ~/.bashrc
gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps']"

gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds true
