export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

if [ -f ~/.bashrc ]; then 
		source ~/.bashrc 
fi

if [ -f ~/.bash-aliases ]; then
		. ~/.bash-aliases
fi

if [ -f ~/.bash-functions ]; then
		. ~/.bash-functions
fi

if [ -f ~/.profile ]; then
		. ~/.profile
fi

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

