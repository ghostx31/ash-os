#!/bin/zsh

gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

gsettings set org.gnome.desktop.interface gtk-theme "Catppuccin-Mocha-Standard-Lavender-Dark"

gsettings set org.gnome.desktop.wm.preferences theme "Catppuccin-Mocha-Standard-Lavender-Dark"

gsettings set org.gnome.shell.extensions.user-theme name "Catppuccin-Mocha-Standard-Lavender-Dark"

mkdir -p /home/$USER/.config/gtk-4.0

ln -sf /home/$USER/.themes/Catppuccin-Mocha-Standard-Lavender-Dark/gtk-4.0/ /home/$USER/.config/gtk-4.0

# gsettings set org.gnome.desktop.interface icon-theme "Catppuccin-mocha"
gsettings set org.gnome.desktop.interface.icon-theme "Tela-dark"

gsettings set org.gnome.desktop.background picture-uri-dark "file:///home/AshOS/.themes/wallpapers/forrest.png"


