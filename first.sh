#!/bin/bash
echo "создаем папки"
mkdir ~/.config
mkdir ~/.config/nvim
echo "Подключаем доп репозитории"
sudo add-apt-repository ppa:deadsnakes/ppa
sudo add-apt-repository ppa:neovim-ppa/stable
echo "Обновляем"
sudo apt update
sudo apt install zsh tmux htop -y
echo "Подготовка среды"
sudo apt install python-dev python-pip python3-dev python3-pip -y
sudo apt install python3.10 -y
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
sudo update-alternatives --config python3
sudo apt install python3-apt python3.10-distutils -y
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python3.10 get-pip.py
sudo apt install python3.10-venv -y
sudo python -m pip install --upgrade pip
nvm install v16.13.1
echo "Настройки для nvim"
sudo apt install software-properties-common python-software-properties neovim -y
sudo apt install git curl exuberant-ctags -y
sudo apt install -y silversearcher-ag
wget https://github.com/sharkdp/bat/releases/download/v0.15.4/bat_0.15.4_amd64.deb
sudo dpkg -i ./bat_0.15.4_amd64.deb
sudo apt install -y -o Dpkg::Options::="--force-overwrite" bat ripgrep
source ~/.bashrc
python3 -m venv ~/.config/nvim/env
source ~/.config/nvim/env/bin/activate
pip install wheel
pip install yapf doq
deactivate
echo "Закачиваем нужные скрипты и пакеты"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"