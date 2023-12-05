
export PS1='\e[48;5;69m\][\[\e[38;5;255m\]\u\[\e[39m\]@\[\e[4m\]\h\[\e[24m\]]\[\e[38;5;232;48;5;114m\]$( git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)\[\e[0;48;5;202m\] \w \[\e[0m\]\[$(tput sc; printf "%*s" $((COLUMNS - 40)) "$(date "+%I:%M %p %m/%d")"; tput rc)\[\e[48;5;62m\]\]\[\e[0m\]\n $: '

