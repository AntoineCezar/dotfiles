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

# Set prompt
autoload -U promptinit && promptinit && prompt adam1

# Load common shell configuration
if [ -d ~/.config/sh.d ]; then
  for f in ~/.config/sh.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Set bash like behaviour for ctrl+left and ctrl+right
bindkey ";5D" backward-word
bindkey ";5C" forward-word

[ -f "/usr/share/zsh/site-contrib/powerline.zsh" ] &&
    . /usr/share/zsh/site-contrib/powerline.zsh
