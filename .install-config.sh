#!/usr/bin/fish
# Here I'm using WSL2 with Ubuntu as the distro. You can use other package managers to get the packages I'm using here.

# Set some color env vars
set GREEN '\033[1;32m';
set YELLOW '\033[1;33m'
set PURPLE '\033[0;31m'
set NC '\033[0m'

# Install deps
sudo apt install \
	bat \
	tmux \
	git \
	peco \

function yellow_print 
	echo -e "$YELLOW$argv$NC"
end

function green_print 
	echo -e "$GREEN$argv$NC"
end

function red_print 
	echo -e "$PURPLE$argv$NC"
end


function print_installed_version
	yellow_print "Installed $argv[1] version $argv[2]"
end


function print_already_installed_version
	green_print "$argv[1] is already installed $argv[2]"
end

# Install Rustup & Rust
if ! type -q rustup
	set -l RUSTUP_FILE_NAME "rustup-install.sh"
	yellow_print "Installing rustup..."

	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs --output $RUSTUP_FILE_NAME
	chmod +x $RUSTUP_FILE_NAME
	sh $RUSTUP_FILE_NAME -y

	echo "Removing $RUSTUP_FILE_NAME"
	rm $RUSTUP_FILE_NAME
	print_installed_version "rustup" (rustup --version)
	print_installed_version "rustc" (rustc --version)
	set -e RUSTUP_FILE_NAME
else 
	print_already_installed_version "rustup" (rustup --version)
	print_already_installed_version "rustc" (rustc --version)
end

# Install fzf
if ! type -q fzf
	set -l FZF_FOLDER ".fzf"
	yellow_print "Installing fzf..."

	git clone --depth 1 https://github.com/junegunn/fzf.git ~/$FZF_FOLDER

	# Let user configure their own stuff
	set -l FZF_INSTALL_CMD "~/$FZF_FOLDER/install"
	bash -c $FZF_INSTALL_CMD
	rm -r ~/$FZF_FOLDER
	set -e FZF_FOLDER
	set -e FZF_INSTALL_CMD
else 
	print_already_installed_version "fzf" (fzf --version)
end

# Install go (needed for ghq)
if ! type -q gasf
	set -l GO_FOLDER "/usr/local/go"
	set -l GO_VERSION "go1.17.2.linux-amd64.tar.gz"
	set -l GO_URL "https://golang.org/dl/$GO_VERSION"
	yellow_print "Downloading Go... $GO_URL"

	# Download and install (also, follow redirects)	
	curl --proto '=https' -L --tlsv1.2 $GO_URL --output $GO_VERSION
	# Remove previous installation if there's files left behind
	sudo rm -rf $GO_FOLDER
	sudo tar -C /usr/local -xzf $GO_VERSION
	print_installed_version "go" (go version)
	# Adding to path is already done in config.fish
	set -e GO_FOLDER	
	set -e GO_VERSION	
else 
	print_already_installed_version "go" (go version)
end

# Install ghq
if ! type -q ghq
	go install github.com/x-motemen/ghq@latest
	print_installed_version "ghq" (ghq --version)
else 
	print_already_installed_version "ghq" (ghq --version)
end

# Install exa
if ! type -q exa
	cargo install exa
	# Cargo packages are already added to path in ~/.config/fish/config.fish
	print_installed_version "exa" (exa --version)[2]
else 
	print_already_installed_version "exa" (exa --version)[2]
end

# Install fisher
if ! type -q fisher
	echo "Installing fisher";
	curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
	print_installed_version "fisher" (fisher --version)
else
	print_already_installed_version "fisher" (fisher --version)
end

# Install fish plugins using fisher
if type -q fisher
	yellow_print "Installing fish plugins from ~/.config/fish/fish_plugins"
	green_print (fisher list)
	fisher install (fisher list)
	print_installed_version "green" (fisher install (fisher list))
end

# Install fnm
if ! type -q fnm
	cargo install fnm
else 
	print_already_installed_version "fnm" (fnm --version)
end

# Source the config file
source ~/.config/fish/config.fish

