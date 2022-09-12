# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
# This can be run on any Debian-based distro

# PRO TIP: use ufw to quickly manage ports
# example. open/allow traffic on port 25: sudo ufw allow 25

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

neofetch


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=20000
HISTFILESIZE=40000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

export EDITOR=vim
#export VISUAL=vim


# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi
   # I use Setaf [01;36m\] as non-root command prompt color, & Red [01;31m\] as Root user
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[1;96m\]\u@\h\[\033[00m\]:\[\033[1;94m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ls='ls -l'
alias la='ls -la'
alias lll='lsgrep'
alias vim='nvim'
alias pip='pip3'
alias python='python3'
alias p='pass'
alias pa='pass add'
alias update='sudo apt update; sudo apt upgrade'
alias install='sudo apt install'
alias late='ls -lt | head -n 3'
alias brave="brave-browser"
alias ifconfig='sudo ifconfig'
alias ppp='psearch'
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

# Invidious:
# Add ~/.local/bin to PATH by adding the following to your ~/.bashrc:

PATH=$HOME/.local/bin:$PATH

# This will allow invidious-viewer to be launched by using the invidious command in the terminal.

# export PATH="$HOME/.local/bin:$PATH"

#-----------------------------------------------------------------------------------
# I have Python Conda installed, this is commented out because I do not use it everyday.
# >>> conda initialize >>>
#  Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/linux/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/home/linux/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/linux/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/home/linux/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
## <<< conda initialize <<<
#
#. "$HOME/.cargo/env"
#
#
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
