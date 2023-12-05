#!/bin/bash
files=(
".bashrc"
".psqlrc"
".tmux.conf"
".vimrc")

for file in "${files[@]}"; do
    cp /home/cs/dotfiles/$file /home/cs/$file;
    echo "Moved $file"
done

