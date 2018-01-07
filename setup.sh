#!/bin/bash

user_name=`whoami`
git_username="pomutree"
git_user_email="daiga.suzuki@gmail.com"

for dotfile in vimrc zshrc gitconfig 
do
  ln -vnfs $HOME/dotfiles/$dotfile $HOME/.$dotfile
done

# git$B@_Dj(B
git config --global user.name "${git_username}"
git config --global user.email "${git_user_email}"
git config --global color.ui auto

# zsh$B@_Dj(B 
chsh -s /usr/bin/zsh ${user_name}

# $B%[!<%`%G%#%l%/%H%j0J2<$N=jM-<T$rE}0l(B
chown -R ${user_name}:${user_name} /home/${user_name}/

# zsh-completions$BDI2C(B
git clone git://github.com/zsh-users/zsh-completions.git $HOME/dotfiles/

# zsh$B$rMxMQ(B
zsh
source $HOME/.zshrc
