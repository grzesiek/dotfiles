# ~/.bashrc: executed by bash(1) for non-login shells.

case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

shopt -s histappend

# enable extglob
shopt -s extglob


# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

HISTSIZE=10000
HISTFILESIZE=20000

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -n "$DESKTOP_SESSION" ];then
  eval $(gnome-keyring-daemon --start)
  export SSH_AUTH_SOCK
fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export GOROOT=$HOME/pliki/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/pliki/projekty/go
export PATH=$PATH:$GOPATH/bin

export GIT_PS1_SHOWDIRTYSTATE="1"
export GIT_PS1_SHOWSTASHSTATE="1"
export GIT_PS1_SHOWUNTRACKEDFILES="1"
export GIT_PS1_SHOWUPSTREAM="verbose"

PS1="\[\e[32m\]\u\[\e[0m\]\[\e[92m\]@\[\e[32m\]\H\[\e[0m\]: \[\e[37m\]\W \[\e[0m\]"'$(__git_ps1 "\[\e[33m\]| \[\e[37m\]b: \[\e[92m\]%s ")'"\[\e[0m\]"'\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
