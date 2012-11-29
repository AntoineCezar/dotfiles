# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set prompt
PS1='[\u@\h \W]\$ '

# Load common shell configuration
[[ -f ~/.shrc ]] && . ~/.shrc
