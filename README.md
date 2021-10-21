# .files

This is my repository for storing my dotfiles. 

This repository uses the Atlassian dotfiles setup with a bare repository.
https://www.atlassian.com/git/tutorials/dotfiles

# Prerequisites & dependencies
## General
[Fish](https://fishshell.com/) / [GitHub](https://github.com/fish-shell/fish-shell) - a user friendly shell  
[Fisher](https://github.com/jorgebucaran/fisher) - a plugin manager for fish

## CLI tools
[fzf](https://github.com/junegunn/fzf) - 🌸 A command-line fuzzy finder  
[bat](https://github.com/sharkdp/bat) - A cat(1) clone with wings  
[tmux](https://github.com/tmux/tmux) - terminal multiplexer

## Toolchain requirements
[Rust](https://www.rust-lang.org/)  
[Go](https://golang.org/)

There is an included [helper script](##Installing-all-dependencies) that will help you install these dependencies.

## Setup
First of all, make sure you have an alias for `config` in your shell's configuration:

**Bash**
```bash
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
```

**Fish**
```bash
alias config "/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
```


# Installation
To install the dotfiles on a fresh system, run the following command:  
```bash
git clone --bare git@github.com:tatupesonen/dotfiles.git ~/.dotfiles
```
This will clone this repository into your user's home folder.

## Installing all dependencies
I've included a helper script that will install the following dependencies:
- Rust
- Go
- GHQ
- fzf
- bat
- tmux
- fisher
  - fish plugins  

**You can run it by running**
```bash
chmod +x $HOME/.install-config.sh && $HOME/.install-config.sh
```

# Adding configuration files
```bash
config add <path>
```
```bash
config commit -m "chore: commit-msg"
```

# To push to the remote  
```
config push
```
