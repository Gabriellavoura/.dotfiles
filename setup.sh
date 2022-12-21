#! /bin/bash

# update and upgrade
apt update && sudo apt upgrade -y

# set software-properties-common ppa
apt-get install software-properties-common

# Add extras ppas
add-apt-repository ppa:git-core/ppa
add-apt-repository ppa:neovim-ppa/unstable

# update and upgrade
apt update && sudo apt upgrade -y

# install zsh
apt install zsh -y

# Configure git
git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager.exe"

# Make it the default shell
chsh -s $(which zsh)

# install oh-myzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install spaceship theme
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# download my .dotfiles
git clone https://github.com/Gabriellavoura/.dotfiles.git

# Copy my zsh dotfile
cp .dotfiles/zsh/.zshrc ~/.zshrc

# Copy spaceship dotfile
cp .dotfile/SpaceShip/.spaceshiprc.zsh ~/.spaceshiprc.zsh

# install nvim
apt install neovim

#create a config directory and past my neovim settings
mkdir ~/.config
cp -r .dotfiles/nvim ~/.config/


