" automatically install vim-plug and run PlugInstall if vim-plug not found
if empty(glob('~/.vim/bundle/Vundle.vim'))
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall
endif

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'tpope/vim-fugitive'
Plugin 'python-mode/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp':'powerline/bindings/vim'}
Plugin 'groovy.vim'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'vim-airline/vim-airline'

call vundle#end()
filetype plugin indent on

autocmd BufNewFile,BufRead Jenkinsfile set syntax=groovy
inoremap jk <esc>

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
set backspace=indent,eol,start
set clipboard=unnamed
syntax enable
set number
set ts=4
set smartindent
set ruler
set expandtab
set shiftwidth=4
set cursorline
set showmatch
let python_highlight_all = 1
syntax on

set encoding=utf-8
if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif

let g:jedi#use_tabs_not_buffers = 1
