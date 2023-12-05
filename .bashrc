if [[ -f ~/dotfiles/config.sh ]]; then
	 . ~/dotfiles/config.sh
fi

if [[ -f ~/dotfiles/functions.sh ]]; then
	 . ~/dotfiles/functions.sh
fi
if [[ -f ~/dotfiles/aliases.sh ]]; then
	 . ~/dotfiles/aliases.sh
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
