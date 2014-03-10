#!/bin/sh

FILES=( ~/.gmrunrc ~/.zshrc ~/.zsh_profile ~/.bashrc ~/.bash_profile ~/.tmux.conf ~/.vimrc ~/.weechat/ )

for file in "${FILES[@]}"
do
    cp -r $file ~/repos/dot-files/
done

cp -r ~/bin/* ~/repos/dot-files/bin/
cp -r ~/.config/* ~/repos/dot-files/.config/
