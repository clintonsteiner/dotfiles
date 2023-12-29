#!/bin/bash
if [ -f ~/.vim/bundle/Vundle.vim ]; then
    echo "Vundle installed already"
else
    gh repo clone VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall
