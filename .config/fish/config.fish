# Exa aliases
alias ll "exa -l -g --icons"
alias lla "ll -a"

# Other aliases
alias g "git"

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
# fish_add_path /usr/local/go/bin
