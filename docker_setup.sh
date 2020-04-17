#!/bin/bash

user_name=`whoami`
git_username="pomutree"
git_user_email="daiga.suzuki@gmail.com"

# owner
if [ $user_name != 'root' ]; then
    echo 'run as a root user.';
    exit 1
fi

for dotfile in vimrc gitconfig 
do
  ln -vnfs $HOME/dotfiles/$dotfile $HOME/.$dotfile
done

ln -vnfs $HOME/dotfiles/zshrc.docker $HOME/.zshrc

# use zsh
zsh
source $HOME/.zshrc
