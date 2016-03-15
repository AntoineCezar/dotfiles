if [ -d $HOME/.config/xinitrc.d ] ; then
    for f in $HOME/.config/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi
