export VISUAL="vim"
export HISTTIMEFORMAT="%F %T "
export ANDROID_HOME="/opt/android-sdk-linux/"
export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[\033[31m\]`git branch 2> /dev/null | /bin/grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`\[\033[00m\]$ "
export PATH="$PATH:$HOME/.bin"

export GOPATH="$HOME/.go"
export GOBIN="$GOPATH/bin"

bind -m vi-insert "\C-l":clear-screen
bind -m vi-insert "\C-w":shell-backward-kill-word

# append to the history file, don't overwrite it
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

if [ -f $HOME/.bash_aliases ];
then
    source $HOME/.bash_aliases
fi

if [ -z $TMUX ];
then
	tmux;
fi

