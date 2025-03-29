# raspberry-pi-4-server-config

## Mission
Starter notes and configuration for setting up a Raspberry Pi 4 as a server.\
These instructions are meant as a starting position for a Raspberry Pi 4 to be used as a server, or as a Linux development machine, and do not include packages for use in a desktop environment.\
Not all system restart points are documented here, a system reboot may be required, and error messages may be displayed if resource paths don't exist yet in dotfiles.

This has been tested on a Raspberry Pi 4, Ubuntu Server 24.10.  These instructions should work on any Debian distro with few modifications.

## Create SSH connection
*


## Github
* [create ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
* [add new ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) to github

## Download this repo
* Download this repo to `$HOME` directory
* Install dependencies:
    * `xargs sudo apt install -y < packages.txt`
* Run [Stow](https://www.gnu.org/software/stow/manual/stow.html)
    * rename existing dotfiles in $HOME (ex: `.bash_profile`, `.bashrc`) to avoid conflicts
    * run stow: `cd $HOME/raspberry-pi-4-server-config && stow .`
* Install [pyenv](https://github.com/pyenv/pyenv?tab=readme-ov-file#linuxunix)

## Install FZF
* Install from [repo](https://github.com/junegunn/fzf?tab=readme-ov-file#using-git)
* Install to home directory

## Create `github` path
* `mkdir $HOME/github`
* use this path for downloading github repos

## Install Rust
* `cd /tmp`
* `curl -o install.sh https://sh.rustup.rs`
* `chmod +x install.sh`
* `./install.sh`

## Install Go
<details>
    <summary>* Download [Golang](https://golang.org/dl/)</summary>
	* get correct version for system architecture (`$ arch`)
	* ex: `go1.23.5.linux-armv64.tar.gz`
	* use `wget` command to save to pi `/tmp` directory
		* go to the list of release downloads, find correct download, copy file url, use `wget` to download to `/tmp` directory
<details>
* Install / Re-install Go
	* may require sudo permissions
	* `rm -rf /usr/local/go`
	* `sudo tar -C /usr/local -xzf {downloaded go file path}`
	* `mkdir $HOME/go`
		* Inside new `go` path:
			* `mkdir bin`
			* `mkdir pkg`
			* `mkdir src`
			* `mkdir programs`
	* Add to the PATH environment variable (`.profile`)
		* `export PATH="$PATH:/usr/local/go/bin"`
		* `export GOPATH="$HOME/go"`
* Restart system
* Confirm installation:
	* `go env`
	* look for entries of `GOPATH`, `GOROOT`, `GOVERSION`

## Install nvm
* `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash`
* reload terminal or source `.bashrc`
* `nvm install node`

## Install Yazi
* Install [Yazi](https://yazi-rs.github.io/docs/installation/#build-from-source) from source
    * follow instructions for installing dependencies and [Rust](#install-rust)
    * dependencies are included in `packages.txt` from this repo
    * install to `$HOME` directory
    * yazi configuration instructions in this repo in the `yazi-config` directory

## Install Lazygit
* `go install github.com/jesseduffield/lazygit@latest`
* if lazygit won't run from command line, make an alias pointing to lazygit installation: `alias lazygit="$HOME/go/bin/lazygit"`
* custom lazygit configuration can be found in [this repo](https://github.com/musgravej/lazygit-config)

## Install text editor / IDE
* Vim
    * example [Vim config](https://github.com/musgravej/vim-pi-public) for Raspberry Pi.
    * fork repo and customize
* NeoVim
    * example [Neovim config](https://github.com/musgravej/nvim_public) for Raspberry Pi.
    * fork repo and customize

## Install Docker
** Follow Docker install [instructions](https://docs.docker.com/engine/install/ubuntu/)
