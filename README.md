# .files

This is my repository for storing my dotfiles. 

This repository uses the Atlassian dotfiles setup with a bare repository.
https://www.atlassian.com/git/tutorials/dotfiles

# Setup
First of all, make sure you have an alias for `config` in your shell's configuration:

## Bash
`alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`

## Fish
`alias config "/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Installation
To install the dotfiles on a fresh system, run the following command:
`git clone --bare git@github.com:tatupesonen/dotfiles.git ~/.dotfiles`
This will clone this repository into your user's home folder.

# Adding configuration files
`config add <path>`
`config commit -m "chore: commit-msg"`

# To push to the remote
`config push`
