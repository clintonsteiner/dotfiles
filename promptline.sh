# Function to set the hostname and user
host_user() {
  #echo -ne "\[\e[48;5;69m\][\[\e[38;5;255m\]\u@\[\e[4m\]\h\[\e[24m\]]\[\e[0m\]"
  #echo -n '\[\e[48;5;69m\][\[\e[38;5;255m\]\u\[\e[39m\]@\[\e[4m\]\h\[\e[24m\]]\[\e[38;5;232;48;5;114m\]'
  echo -ne "\[$(\e[48;5;69m\][\[\e[38;5;255m\]\u\[\e[39m\]@\[\e[4m\]\h\[\e[24m\]]\[\e[38;5;232;48;5;114m\]\[\e[0m\])\]"
}

# Function to set the Git branch and status
git_branch_status() {
  local git_branch="$(git branch --show-current 2>/dev/null)"
  local git_status="$(git status --short 2>/dev/null)"
  if [[ -n "$git_branch" ]]; then
    local color_code="\[\e[38;5;232;48;5;114m\]"
    local reset_color="\[\e[0m\]"
    if [[ -n "$git_status" ]]; then
      echo -n "${color_code}(${git_branch}*)${reset_color} "
    else
      echo -n "${color_code}(${git_branch})${reset_color} "
    fi
  fi
}

# Function to set the right-aligned date
right_aligned_date() {
  printf "\[\e[38;5;11m\]%*s\[\e[0m\]" $((COLUMNS-10)) "$(date +'%I:%M %p %b %d')"
}

# Function to set the current working directory with color
working_dir() {
  echo -ne "\[\e[48;5;202m\] \w \[\e[0m\]"
}

# Combine the functions to form the PS1
PS1='$(host_user)$(git_branch_status)$(working_dir)$(right_aligned_date)\n\[\e[38;5;62m\]\$ \[\e[0m\]'
export PS1="\e[48;5;69m\][\[\e[38;5;255m\]\u\[\e[39m\]@\[\e[4m\]\h\[\e[24m\]]$( git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)\[\e[0;48;5;202m\] \w \[\e[0m\]\[$(tput sc; printf "%*s" $((COLUMNS - 40)) "$(date +'%I:%M %p %m/%d')"; tput rc)\]\[\e[0m\]\n"
export PS1='\e[48;5;69m\][\[\e[38;5;255m\]\u\[\e[39m\]@\[\e[4m\]\h\[\e[24m\]]\[\e[38;5;232;48;5;114m\]$( git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)\[\e[0;48;5;202m\] \w \[\e[0m\]\[\e[48;5;62m\]\[$(tput sc; printf "%*s" $((COLUMNS - 40)) "$(date "+%I:%M %p %m/%d")"; tput rc)\]\[\e[0m\]\n $: '
export PS1='\e[48;5;69m\][\[\e[38;5;255m\]\u\[\e[39m\]@\[\e[4m\]\h\[\e[24m\]]\[\e[38;5;232;48;5;114m\]$( git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)\[\e[0;48;5;202m\] \w \[\e[0m\]\[$(tput sc; printf "%*s" $((COLUMNS - 40)) "$(date "+%I:%M %p %m/%d")"; tput rc)\[\e[48;5;62m\]\]\[\e[0m\]\n $: '
#export PS1='\e[48;5;69m\][\[\e[38;5;255m\]\u\[\e[39m\]@\[\e[4m\]\h\[\e[24m\]]\[\e[38;5;232;8;5;114m\]$(git_branch_status)\[\e=[0m\]\[\e[0;48;5;202m\] \w \[\e[0m\]\[$(tput sc; printf "%*s" $((COLUMNS - 25)) "$(date +"%I:%M %p %m/%d")"; tput rc)\]\[\e[0m\]\n'

#export PS1
