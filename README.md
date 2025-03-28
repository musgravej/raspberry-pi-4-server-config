# raspberry-pi-4-server-config

## Mission
Starter notes and configuration for setting up a Raspberry Pi 4 as a server.\
These instructions are meant as a starting position for a Raspberry Pi 4 to be used as a server, and do not include packages for use in a desktop environment.

This has been tested on a Raspberry Pi 4, Ubuntu Server 24.10.  These instructions should work on any Debian distro with few modifications.

### Github
* [create ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
* [add new ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) to github

## Download this repo
* Download this repo to `$HOME` directory
* Install dependencies:
    * `$ xargs sudo apt install -y < packages.txt`
* Run [Stow](https://www.gnu.org/software/stow/manual/stow.html)
    * rename existing dotfiles in $HOME (ex: `.bash_profile`, `.bashrc`) to avoid conflicts

## Create `github` path
* `mkdir $HOME/github`

## Install FZF
* Install from [repo](https://github.com/junegunn/fzf?tab=readme-ov-file#using-git)
* Install to home directory

## Install text editor / IDE
* Vim
    * example [Vim config](https://github.com/musgravej/vim-pi-public) for Raspberry Pi.
    * fork repo and customize
* NeoVim
    * example [Neovim config](https://github.com/musgravej/nvim_public) for Raspberry Pi.
    * fork repo and customize
