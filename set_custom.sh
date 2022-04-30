#!/bin/bash
# Настраиваем nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
#украшательство nvim
wget https://github.com/sharkdp/bat/releases/download/v0.15.4/bat_0.15.4_amd64.deb
sudo dpkg -i ./bat_0.15.4_amd64.deb
sudo apt install -y -o Dpkg::Options::="--force-overwrite" bat ripgrep
#настраиваем zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
