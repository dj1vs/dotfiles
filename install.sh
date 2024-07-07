#!/bin/bash

ln -s "$PWD/kitty.conf" ~/.config/kitty

mkdir ~/.config/polybar
ln -s "$PWD/polybar/config.ini" ~/.config/polybar
ln -s "$PWD/polybar/launch.sh"  ~/.config/polybar

mkdir ~/.config/i3
ln -s "$PWD/i3/config" ~/.config/i3