# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/acezar/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Load common shell configuration
if [ -d ~/.config/sh.d ]; then
    for f in ~/.config/sh.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# Load zsh shell configuration
if [ -d ~/.config/zsh.d ]; then
  for f in ~/.config/zsh.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
