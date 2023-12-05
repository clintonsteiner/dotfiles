export EDITOR=vim
export PSQL_EDITOR=vim
export CC=clag
export CXX=clang++
export PYTHONBREAKPOINT='IPython.core.debugger.set_trace'
export LOGLEVEL='debug'
export PS1='\[\e[0;32m\][ $? \[\e[0;33m\]\t \[\e[0;32m\]\u \[\e[0;33m\]\w \[\e[0;32m\]] \$ \[\e[0m\]'

source ./git-completion.bash

if [ -f ./pytest_complete ]; then
     . ./pytest_complete || true
fi

