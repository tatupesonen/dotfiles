# .files

This is my repository for storing my dotfiles. 

This repository uses the Atlassian dotfiles setup with a bare repository.
https://www.atlassian.com/git/tutorials/dotfiles

# Prerequisites & dependencies
[Fish](https://fishshell.com/) / [GitHub](https://github.com/fish-shell/fish-shell) - a user friendly shell  
[Fisher](https://github.com/jorgebucaran/fisher) - a plugin manager for fish

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
