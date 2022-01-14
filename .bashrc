# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='\[\e[0m\][\[\e[0;91m\]\h\[\e[0m\]@\[\e[0;93m\]\u\[\e[0m\]]\[\e[0m\]{\[\e[0;91m\]\w\[\e[0m\]}\n\[\e[0;93m\]> \[\e[0m\]' 

set -o noclobber
set visible-stats on
PROMPT_DIRTRIM=2
PROMPT_COMMAND='history -a'
HISTSIZE=500000
HISTFILESIZE=100000
HISTCONTROL="erasedups:ignoreboth"
HISTTIMEFORMAT='%F %T '
CDPATH="."
bind "set completion-ignore-case on"
bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"
bind "set mark-symlinked-directories on"
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'
shopt -s autocd 2> /dev/null
shopt -s dirspell 2> /dev/null
shopt -s cdspell 2> /dev/null
shopt -s cdable_vars
shopt -s checkwinsize
shopt -s globstar 2> /dev/null
shopt -s nocaseglob;
shopt -s histappend
shopt -s cmdhist
alias ls='ls --color=auto'
alias la='ls -la'
export GOPATH="$HOME/go"
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"
