#/bin/bash

mkdir -p ~/.config

ln -sri .gitconfig ~/
ln -sri .inputrc ~/
ln -sri .bashrc ~/
ln -sri .zshrc ~/
ln -sri .vimrc ~/
ln -sri .config/libinput-gestures.conf ~/.config

mkdir -p ~/.config/i3
ln -sri .config/i3/config ~/.config/i3

mkdir -p ~/.config/compton
ln -sri .config/compton/config ~/.config/compton

mkdir -p ~/.config/polybar/scripts
ln -sri .config/polybar/config ~/.config/polybar/config
ln -sri .config/polybar/launch.sh ~/.config/polybar/launch.sh
ln -sri .config/polybar/scripts/mpris.sh ~/.config/polybar/scripts/mpris.sh

mkdir -p ~/bin 
ln -sri bin/* ~/bin

mkdir -p ~/.config/alacritty
ln -sri .config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

mkdir -p ~/.config/gtk-2.0
ln -sri .config/gtk-2.0/gtkfilechooser.ini ~/.config/gtk-2.0/gtkfilechooser.ini 

mkdir -p ~/.config/gtk-3.0
ln -sri .config/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini 

mkdir -p ~/.config/rofi
ln -sri .config/rofi/config  ~/.config/rofi

mkdir -p ~/.config/qutebrowser
ln -sri .config/qutebrowser/config.py ~/.config/qutebrowser

mkdir -p ~/.config/dunst
ln -sri .config/dunst/dunstrc ~/.config/dunst

mkdir -p ~/.config/nvim
ln -sri .config/nvim/init.vim ~/.config/nvim/init.vim
ln -sri .config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
ln -sri .config/nvim/coc-settings.json ~/.vim/coc-settings.json

