#!/bin/bash
echo "Кастомизируем"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cp -f coc-settings.json ~/.config/nvim/
cp -f init.vim ~/.config/nvim/
cp -f .tmux.conf ~/
cp -f .zshrc ~/
echo "Меняем оболочку на zsh"
chsh -s /usr/bin/zsh