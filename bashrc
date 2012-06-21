#ripped off from many .bashrcs across the web

[ -z "$PS1" ] && return

: ${HOME=~}
: ${LOGNAME=$(id -un)}
: ${UNAME=$(uname)}

HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r $HOME/.dircolors && eval "$(dircolors -b $HOME/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias du1='du -h --max-depth=1'
alias fn='find . -name'
alias hi='history | tail -20'

test -e $HOME/.bash_aliases && . $HOME/.bash_aliases

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
test -d "$HOME/.bin" && PATH="$HOME/.bin:$PATH"
test -e "$HOME/.bin/z.sh" && . $HOME/.bin/z.sh
test -e $HOME/.bashrc.local && . $HOME/.bashrc.local
test -e $HOME/.profile && . $HOME/.profile

export EDITOR=vim

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
