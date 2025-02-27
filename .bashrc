[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# aliases
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

alias ll='ls -alF'
alias ls='ls --color=auto'
alias vi='vim'

alias black='black --line-length=120'
alias pip='pip3'
alias python='python3'
alias tmux='TERM=xterm-256color tmux'

alias sshfix='eval $(ssh-agent);ssh-add'
alias gd='git diff'
alias gds='git diff --staged'
alias gs='git status'
alias ga='git add'
alias gr='git restore'
alias grs='git restore --staged'
alias gcm='git commit -m'
alias gbdates='git for-each-ref --sort=committerdate refs/heads/ --format="%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:short)%(color:reset))"'
alias gca='git commit --amend --no-edit --date=now'

alias pkgList='apt-mark showmanual > package.list'
alias pktInstallList='apt-mark showmanual > package.list'

alias kt='kafka-topics.sh --bootstrap-server localhost:9092'
alias kt_delete='kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic'
alias kt_create='kafka-topics.sh --bootstrap-server localhost:9092 --create --partitions 3 --topic'
alias kt_list='kafka-topics.sh --bootstrap-server localhost:9092 --list'

alias kc='kafka-consumer-groups.sh --bootstrap-server localhost:9092'
alias kc_list='kafka-consumer-groups.sh --bootstrap-server localhost:9092 --list'
alias kc_describe='kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group'
alias kc_delete='kafka-consumer-groups.sh --bootstrap-server localhost:9092 --delete --group'

alias kudu_listTables='kudu table list localhost'
alias kudu_deleteTable='kudu table delete localhost'

# config
export EDITOR=vim
export PSQL_EDITOR=vim
export CC=clang
export CXX=clang++
export LOGLEVEL='debug'

source ~/git/dotfiles/git-completion.bash
if [ -f ~/git/dotfiles/git-completion.bash ]; then
    . ~/git/dotfiles/pytest_complete || true
fi

if [ -f ~/git/dotfiles/pytest_complete ]; then
    . ~/git/dotfiles/pytest_complete || true
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
export PATH=$PATH:~/.local/bin:/Users/cs/Library/Python/3.9/bin
