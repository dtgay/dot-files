#!/bin/sh

FILES=( ~/.zshrc ~/.vimrc ~/.tmux.conf )

for file in "${FILES[@]}"
do
    cp -r $file ~/Devel/dot-files/
done

cp -r ~/bin/* ~/Devel/dot-files/bin/
cp -r ~/.config/* ~/Devel/dot-files/.config/
