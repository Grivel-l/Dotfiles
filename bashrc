trap $HOME/scripts/checkBrew.sh DEBUG

alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
alias tar="tar -v"
alias chmod="chmod -v"
alias ls="ls -G"
alias dd="dd status=progress"
alias files="nautilus"
alias grep='grep -n --color=auto'
alias nodemon="nodemon --harmony"
alias gcc="gcc -Wall -Wextra -Werror"
alias diff="diff --color=always"
alias :wq="exit"
alias cal="cal -Y"

export PATH="/sgoinfre/Perso/legrivel/.brew/bin/:$PATH"
export VISUAL="vim"
export HISTTIMEFORMAT="%F %T "
export ANDROID_HOME=/opt/android-sdk-linux/
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[\033[31m\]`git branch 2> /dev/null | /usr/bin/grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`\[\033[00m\]$ '

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -z $TMUX ];
then
	tmux;
fi
