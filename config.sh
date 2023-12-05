export EDITOR=vim
export PSQL_EDITOR=vim
export CC=clag
export CXX=clang++
export PYTHONBREAKPOINT='IPython.core.debugger.set_trace'
export LOGLEVEL='debug'

source ./git-completion.bash

if [ -f ./pytest_complete ]; then
     . ./pytest_complete || true
fi

