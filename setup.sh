#!/bin/bash

user_name=`whoami`
git_username="pomutree"
git_user_email="daiga.suzuki@gmail.com"

for dotfile in vimrc zshrc gitconfig 
do
  ln -vnfs $HOME/dotfiles/$dotfile $HOME/.$dotfile
done

# git設定
git config --global user.name "${git_username}"
git config --global user.email "${git_user_email}"
git config --global color.ui auto

# zsh設定 
chsh -s /usr/bin/zsh ${user_name}

# ホームディレクトリ以下の所有者を統一
chown -R ${user_name}:${user_name} /home/${user_name}/

# zsh-completions追加
git clone git://github.com/zsh-users/zsh-completions.git $HOME/dotfiles/

# zshを利用
zsh
source $HOME/.zshrc
