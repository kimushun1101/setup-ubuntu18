#!/bin/sh
git config --global user.name "Shunsuke Kimura"
git config --global user.email "kimushun1101@gmail.com"

if [ ! -e ~/.ssh/id_rsa ]; then
  cd ~/.ssh
  ssh-keygen -t rsa
fi

cat ~/.ssh/id_rsa.pub | pbcopy
xdg-open https://github.com/settings/ssh
read -p "Upload public key, then HIT ENTER: "
ssh -T git@github.com
