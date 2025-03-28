# Setup fzf
# ---------
if [[ ! "$PATH" == */home/liz/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/liz/.fzf/bin"
fi

source <(fzf --zsh)
