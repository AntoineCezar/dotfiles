#!/bin/sh
function backup_target {
    mv "$1" "$1.$(date +%FT%T)"
}

function link_target {
    if [ ! -h "$2" ]; then
        backup_target "$2" ||
        return 1
    fi
    ln -s "$PWD/$1" "$2" &&
    echo "$2 -> $PWD/$1"
}

for NAME in *; do
    if [ ! "$NAME" == "README.md" ] \
    && [ ! "$NAME" == "install.sh" ] \
    && [ ! "$NAME" == "config" ]; then
        link_target $NAME "$HOME/.$NAME"
    fi
done
