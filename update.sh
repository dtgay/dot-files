#!/bin/sh

FILES=( ~/.zshrc ~/.zsh_profile ~/.bashrc ~/.bash_profile ~/.tmux.conf ~/.vimrc ~/.weechat/ )

for file in "${FILES[@]}"
do
    cp -r $file ~/dot-files/
done
