#!/bin/zsh

gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

gsettings set org.gnome.desktop.interface gtk-theme "Colloid-Yellow-Dark-Catppuccin-mocha"

gsettings set org.gnome.desktop.wm.preferences theme "Colloid-Yellow-Dark-Catppuccin-mocha"

gsettings set org.gnome.shell.extensions.user-theme name "Colloid-Yellow-Dark-Catppuccin-mocha"

ln -sf /home/AshOS/.themes/Colloid-Yellow-Dark-Catppuccin-mocha/gtk-4.0/ /home/AshOS/.config/gtk-4.0

# gsettings set org.gnome.desktop.interface icon-theme "Catppuccin-mocha"

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

gsettings set org.gnome.desktop.background picture-uri-dark "file:///home/AshOS/.themes/wallpapers/forrest.png"


