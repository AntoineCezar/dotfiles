#!/bin/sh
setxkbmap fr oss
which numlockx && numlockx on
which xbindkeys && xbindkeys
which xmodmap && [ -f "$HOME/.Xmodmap" ] && xmodmap "$HOME/.Xmodmap"
