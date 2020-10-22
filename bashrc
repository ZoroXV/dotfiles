# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d ~/afs/bin ] ; then
	export PATH=~/afs/bin:$PATH
fi

if [ -d ~/.local/bin ] ; then
	export PATH=~/.local/bin:$PATH
fi

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR=vim
#export EDITOR=emacs

# Color support for less
#export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
#export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
#export LESS_TERMCAP_me=$'\E[0m'           # end mode
#export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
#export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
#export LESS_TERMCAP_ue=$'\E[0m'           # end underline
#export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

#curl wttr.in/paris?0

alias grep='grep --color -n'

alias gl='clear && git log --graph --oneline'
alias gs='clear && git status'
alias gnb='git shortlog -sn --all'
alias gauto='/home/epita/misc-tools/auto-git.sh'

alias ls='ls --color'
alias lsa='clear && ls -a -lh --color'

#PS1='[\u@\h \W]\$ '

#PS1='[\[$(tput sgr0)\]\[\033[38;5;1m\]\t\[$(tput sgr0)\]\[\033[38;5;15m\]]\[$(tput sgr0)\]\[\033[38;5;2m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]\\> \[$(tput sgr0)\]'

#PS1="[\[$(tput sgr0)\]\[\033[38;5;160m\]\t\[$(tput sgr0)\]\[\033[38;5;15m\]]\[$(tput sgr0)\]\[\033[38;5;2m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;5m\]\\$\W\[$(tput sgr0)\]\[\033[38;5;15m\]\\>\[$(tput sgr0)\]"

PS1="[\[$(tput sgr0)\]\[\033[38;5;160m\]\t\[$(tput sgr0)\]]\[$(tput sgr0)\]\[\033[38;5;2m\]\u\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;5m\]\W\[$(tput sgr0)\]\\$\n[\$?] \[$(tput sgr0)\]"
