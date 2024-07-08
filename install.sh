#!/bin/bash

ln -s "$PWD/kitty.conf" ~/.config/kitty

ln -s "$PWD/.zshrc" ~
ln -s "$PWD/.p10k.zsh" ~

mkdir ~/.config/polybar
ln -s "$PWD/polybar/config.ini" ~/.config/polybar
ln -s "$PWD/polybar/launch.sh"  ~/.config/polybar

mkdir ~/.config/i3
ln -s "$PWD/i3/config" ~/.config/i3