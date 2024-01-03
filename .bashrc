source /home/cs/dotfiles/source_bash_files.sh
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# aliases
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l.='ls -d .* --color=auto'
alias ll='ls -alF'
alias ls='ls --color=auto'
alias vi='vim'
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

alias black='black --line-length=120'
alias pip='pip3'
alias python='python3'
alias nvim='~/.local/bin/nvim'
alias tmux='TERM=xterm-256color tmux'

alias sshfix='eval $(ssh-agent);ssh-add'
alias gd='git diff'
alias gds='git diff --staged'
alias gs='git status'
alias ga='git add'
alias gr='git restore'
alias grs='git restore --staged'
alias gcm='git commit -m'
alias gc='git commit'
alias gbdates='git for-each-ref --sort=committerdate refs/heads/ --format="%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:short)%(color:reset))"'
alias gco='git checkout'
alias gca='git commit --amend --no-edit --date=now'

alias pkgList='apt-mark showmanual > package.list'
alias pktInstallList='apt-mark showmanual > package.list'

# config
export EDITOR=vim
export PSQL_EDITOR=vim
export CC=clag
export CXX=clang++
export PYTHONBREAKPOINT='IPython.core.debugger.set_trace'
export LOGLEVEL='debug'
export PS1='\[\e[0;32m\][ $? \[\e[0;33m\]\t \[\e[0;32m\]\u \[\e[0;33m\]\w \[\e[0;32m\]] \$ \[\e[0m\]'

source ~/dotfiles/git-completion.bash

if [ -f ~/dotfiles/pytest_complete ]; then
    . ~/dotfiles/pytest_complete || true
fi


# functions
function optimizeGit(){
    git fsck
    git gc
    git prune
    echo "git optimized"
}
function sendf() {
    echo stuff | nail -a $1 -s files clintonsteiner@gmail.com
}
ff () { find . -name "*$1*" -ls ;}

# PS1
export PS1='\e[48;5;69m\][\[\e[38;5;255m\]\u\[\e[39m\]@\[\e[4m\]\h\[\e[24m\]]\[\e[38;5;232;48;5;114m\]$( git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)\[\e[0;48;5;202m\] \w \[\e[0m\]\[$(tput sc; printf "%*s" $((COLUMNS - 40)) "$(date "+%I:%M %p %m/%d")"; tput rc)\[\e[48;5;62m\]\]\[\e[0m\]\n $: '