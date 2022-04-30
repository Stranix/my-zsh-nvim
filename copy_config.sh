#!/bin/bash
#копируем конфиги
mv -f ./custom_conf/.zshrc ~/
mv -f ./custom_conf/.tmux.conf ~/
mv -f ./custom_conf/.p10k.zsh ~/
mv -f ./custom_conf/coc-settings.json ~/.config/nvim/
mv -f ./custom_conf/init.vim ~/.config/nvim/