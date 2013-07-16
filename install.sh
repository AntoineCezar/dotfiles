#!/bin/sh

for name in *; do
    if [ ! $name == "README.md" ] \
    && [ ! $name == "install.sh" ] \
    && [ ! $name == "config" ]; then
        target="$HOME/.$name"

        if [ ! -h $target ]; then
            mv $target $target.$(date +%FT%T)
            ln -s "$PWD/$name" "$target"
            echo "$target -> $PWD/$name"
        fi
    fi
done
