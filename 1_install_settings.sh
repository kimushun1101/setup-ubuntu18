#!/bin/sh
cd `dirname $0`

sudo apt update

xdg-open https://www.google.com/chrome/
xdg-open https://code.visualstudio.com/docs/?dv=linux64_deb
xdg-open https://slack.com/intl/ja-jp/downloads/linux

sudo apt install -y vim terminator xsel gcc make pkg-config libx11-dev libxtst-dev libxi-dev
mkdir ~/.vimbackup
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
rm -f get-docker.sh 

mkdir -p ~/.config/terminator
cp -f terminator_config ~/.config/terminator/config

mv ~/setup-ubuntu18 ~/.setup
ln -s .setup/vimrc ~/.vimrc
ln -s .setup/gvimrc ~/.gvimrc
ln -s .setup/bash_aliases ~/.bash_aliases
ln -s .setup/Xmodmap ~/.Xmodmap
echo "xmodmap ~/.Xmodmap" >> ~/.bashrc
git clone https://github.com/alols/xcape.git
cd xcape/
make
sudo make install
echo "/usr/bin/xcape -e '#102=Muhenkan'" >> ~/.bashrc

source ~/.bashrc

gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps']"
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds true
sudo timedatectl set-local-rtc true
