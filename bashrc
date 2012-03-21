#ripped off from many .bashrcs across the web

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

: ${HOME=~}

HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"



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

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

test -f $HOME/.bash_aliases && . $HOME/.bash_aliases
test -e $HOME/dotfiles/git-prompt.sh && . $HOME/dotfiles/git-prompt.sh
test -d $HOME/.bin && PATH=$HOME/.bin:$PATH

export JAVA_HOME=/usr/local/lib/jdk1.7.0_03
export M2_HOME=/usr/local/lib/apache-maven-3.0.4
PATH=$JAVA_HOME/bin:$M2_HOME/bin:$HOME/bin:$PATH

export EDITOR=/usr/bin/vim
