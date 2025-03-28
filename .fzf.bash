# Setup fzf
# ---------
if [[ ! "$PATH" == */home/liz/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/liz/.fzf/bin"
fi

eval "$(fzf --bash)"
