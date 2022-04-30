#!/bin/bash
#создаем нужные папки
mkdir ~/.config
mkdir ~/.config/nvim
sudo add-apt-repository ppa:deadsnakes/ppa
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
# устанавливаем node.js
wget https://nodejs.org/dist/v16.15.0/node-v16.15.0-linux-x64.tar.xz 
sudo tar -C /usr/local --strip-components 1 -xf ./node-v16.15.0-linux-x64.tar.xz 
# устанавливаем zsh htop tmux 
sudo apt install zsh htop tmux git curl exuberant-ctags silversearcher-ag -y
# устанавливаем питон
sudo apt install python3.10 python-dev python3-dev python3-pip python3-apt python3.10-distutils python3.10-venv -y
# установка neovim
sudo apt install software-properties-common neovim -y
