#!/bin/bash
files=(
    "/home/cs/dotfiles/aliases.sh"
    "/home/cs/dotfiles/config.sh"
    "/home/cs/dotfiles/functions.sh"
    "/home/cs/dotfiles/kafka_kudu_aliases.sh"
"/home/cs/dotfiles/promptline.sh")

for file in "${files[@]}"; do
    if [[ -f $file ]]; then
        source $file;
        echo "Sourced {$file}"
    else
        echo "{$file} doesnt exist"
    fi
done
