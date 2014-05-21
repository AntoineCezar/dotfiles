# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set prompt
PS1='[\u@\h \W]\$ '

# Load common shell configuration
if [ -d ~/.config/sh.d ]; then
  for f in ~/.config/sh.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
