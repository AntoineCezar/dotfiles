# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load common shell configuration
if [ -d ~/.config/sh.d ]; then
  for f in ~/.config/sh.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Load bash shell configuration
if [ -d ~/.config/bash.d ]; then
  for f in ~/.config/bash.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
