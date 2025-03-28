# yazi-config

### Yazi configurations
* install [rich-cli](https://github.com/textualize/rich-cli)
* set environment variable `EDITOR` to preferred file editor (`export EDITOR="{vim/neovim}"`)

### Updating Yazi on Linux
* navigate directly to yazi installation directory ($HOME/yazi/)
* run git commands for upgrading
* rebuild yazi from source (`cargo build --release --locked`)

### Set up soft links
* ln -s keymap.toml ~/.config/yazi/keymap.toml
* ln -s theme.toml ~/.config/yazi/theme.toml
* ln -s yazi.toml ~/.config/yazi/yazi.toml
* ln -s package.toml ~/.config/yazi/package.toml
* ln -s init.lua ~/.config/yazi/init.lua
* ln -s plugins ~/.config/yazi/plugins
* ln -s flavors ~/.config/yazi/flavors

### Functions
> We suggest using this y shell wrapper that provides the ability to change the current working directory when exiting Yazi.

```bash
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
```

### Packages
* upgrade: `ya pack -u`
* before running  upgrade, clear directories, 'plugins', 'flavors'
* https://yazi-rs.github.io/docs/cli#package-manager

### Plugins
* https://github.com/yazi-rs/plugins
