#!/bin/sh
git config --global user.name "User Name"
git config --global user.email "email@xxx.co.jp"

if [ ! -e ~/.ssh/id_rsa ]; then
  cd ~/.ssh
  ssh-keygen -t rsa
fi

cat .ssh/id_rsa.pub | pbcopy
xdg-open https://github.com/settings/ssh
read -p "Upload public key, then HIT ENTER: "
ssh -T git@github.com
