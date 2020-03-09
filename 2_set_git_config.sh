#!/bin/sh
git config --global user.name "Your Name"
git config --global user.email "your_mail_address@gmail.com"

if [ ! -e ~/.ssh/id_rsa ]; then
  cd ~/.ssh
  ssh-keygen -t rsa
fi

cat ~/.ssh/id_rsa.pub

echo
echo "Open https://github.com/settings/ssh"
echo "Copy above and Upload public key, then HIT ENTER: "
ssh -T git@github.com
