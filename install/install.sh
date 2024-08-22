#!/bin/bash

DOTFILES=$(cd $(dirname "${BASE_SOURCE[0]}") && pwd)

# Install required packages
echo = 'Installing Packages'
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim gcc ripgrep nodejs npm kitty curl
echo = 'Completed Install'

echo = 'Install Lazy Git'
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

echo = 'Remove Lazy Files'
rm lazygit.tar.gz
rm-rf lazygit
echo = 'Completed'

# Setup and move dotfiles to the config folder
echo = 'Move Kitty Config'
# Kitty Setupfiles
rm -rf $HOME/.config/kitty/
ln -s $DOTFILES/kitty/ $HOME/.config/kitty/
# nvim Setupfiles
rm -rf $HOME/.config/nvim/
ln -s $DOTFILES/nvim/ $HOME/.config/nvim/
echo = 'Completed'
