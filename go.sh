#!/bin/bash
set -e
set -x
BIN=~/.local/bin
if [ ! -d $BIN ]; then
    BIN=~/bin
fi
[ -d $BIN ]
for filename in pye ours theirs; do
    if [ ! -e $BIN/$filename ]; then
        cp $filename $BIN/$filename
    elif cmp $filename $BIN/$filename; then
        echo "No change to $filename"
    else
        meld $filename $BIN/$filename
    fi
done
for filename in .bash_profile .vimrc .gitconfig ripgreprc; do
    if [ ! -e ~/$filename ]; then
        cp $filename ~/$filename
    elif cmp $filename ~/$filename; then
        echo "No change to $filename"
    else
        meld $filename ~/$filename
    fi
done
