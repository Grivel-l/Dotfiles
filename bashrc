bind -m vi-insert "\C-l":clear-screen
bind -m vi-insert "\C-w":shell-backward-kill-word

shopt -s histappend
shopt -s globstar

(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

if [ -f $HOME/.bash_aliases ];
then
    source $HOME/.bash_aliases
fi
if [ -f $HOME/.bash_exports ];
then
    source $HOME/.bash_exports
fi
if [ -z $TMUX ];
then
	tmux;
fi

