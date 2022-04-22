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
echo "Закачиваем нужные скрипты и пакеты"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"