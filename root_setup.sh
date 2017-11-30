#!/bin/bash

user='daiga'

# $B<B9T%f!<%6!<3NG'(B
if [ `whoami` != 'root' ]; then
    echo 'root$B%f!<%6!<$G<B9T$7$F$/$@$5$$(B';
    exit 1
fi

for dotfile in vimrc zshrc gitconfig 
do
  ln -vnfs /home/"${user}"/dotfiles/$dotfile /root/.$dotfile
done

# zsh$B@_Dj(B
chsh -s /usr/bin/zsh root
