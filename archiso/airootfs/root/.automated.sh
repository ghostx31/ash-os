#!/bin/bash

gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

gsettings set org.gnome.desktop.interface gtk-theme "Catppuccin-Mocha-Standard-Lavender-Dark"

gsettings set org.gnome.desktop.wm.preferences theme "Catppuccin-Mocha-Standard-Lavender-Dark"

gsettings set org.gnome.shell.extensions.user-theme name "Catppuccin-Mocha-Standard-Lavender-Dark"

# gsettings set org.gnome.desktop.interface icon-theme "Catppuccin-mocha"
gsettings set org.gnome.desktop.interface.icon-theme "Tela-dark"

gsettings set org.gnome.desktop.background picture-uri-dark "file:///usr/share/backgrounds/forrest.png"


