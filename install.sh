#!/bin/bash
#создаем нужные папки
mkdir ~/.config
mkdir ~/.config/nvim
sudo add-apt-repository ppa:deadsnakes/ppa
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc
# устанавливаем zsh htop tmux 
sudo apt install zsh htop tmux git curl exuberant-ctags -y
# устанавливаем питон и node.js
sudo apt install python3.10 python-dev python-pip python3-dev python3-pip -y
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
sudo update-alternatives --config python3
sudo apt install python3-apt python3.10-distutils -y
python3 get-pip.py
sudo apt install python3.10-venv
python3 -m pip install --upgrade pip
nvm install v16.13.1
# установка neovim
sudo apt install software-properties-common neovim -y
