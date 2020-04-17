# Created by newuser for 5.2

# 文字コードをUTF-8に設定
export LANG=ja_JP.UTF-8

# プロンプトの色を設定
autoload colors
colors
PROMPT="%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[yellow]%}%m:%{$fg[green]%}%/%f%k%{$reset_color%} %(!.#.$) "

# lsコマンドの設定
alias ls='ls --color'
alias ll='ls -l --color'
alias la='ls -la --color'

# rbenvの設定
export RBENV_ROOT="/usr/local/rbenv"
export PATH="${RBENV_ROOT}/bin:$PATH"
eval "$(rbenv init -)"
#alias rails='/var/www/fldns.net/bin/rails'

# zsh-completions
if [ -d ${HOME}/dotfiles/zsh-completions/src ] ; then
   fpath=(${HOME}/dotfiles/zsh-completions/src $fpath)
fi

# 補完機能を有効にする 
autoload -U compinit
compinit

export NVM_DIR="/home/daiga/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
