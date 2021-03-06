# Exa aliases
alias ll "exa -l -g --icons"
alias lla "ll -a"

# Only replace vim with neovim if it exists
if type -q nvim
    alias vim "nvim"
end

# Other aliases
alias g "git"

# Search branches with fzf
alias gf "git branch | fzf | xargs git checkout"

# Bind same command to CTRL + f
bind \cf 'gf'

# fzf preview files with bat
alias fzp "fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

# Bind CTRL + R to peco
bind \cr 'peco_select_history (commandline -b)'


# Init starship prompt
starship init fish | source

# This alias is for dotfiles sync, use `config add` to add files. 
alias config "/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Cargo
fish_add_path $HOME/.cargo/bin
# Go
fish_add_path /usr/local/go/bin

# Add Go packages to path
set GOPATH $HOME/go

# Add WSL2 Docker to path
alias docker "com.docker.cli.exe"

# GPG sign
export GPG_TTY=(tty)

# Add local binaries to path
fish_add_path -m ~/.local/bin
fish_add_path -m /usr/local/bin
fish_add_path -m /usr/local

if type -q yarn
    fish_add_path -m (yarn global bin)
end
