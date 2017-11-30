#!/bin/bash

user='daiga'

# 実行ユーザー確認
if [ `whoami` != 'root' ]; then
    echo 'rootユーザーで実行してください';
    exit 1
fi

for dotfile in vimrc zshrc gitconfig 
do
  ln -vnfs /home/"${user}"/dotfiles/$dotfile /root/.$dotfile
done

# zsh設定
chsh -s /usr/bin/zsh root
