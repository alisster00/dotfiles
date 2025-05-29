#!/bin/bash

# Dir de los fondos de pantalla

WALLP_DIR="$HOME/Pictures/Wallpapers"

# Selector de fondos usando Rofi

WALLP_SELECTED=$(ls "$WALLP_DIR" | rofi -dmenu -p "Wallpaper")

# Cambia el fondo si se selecciona una imagen

if [ -n "$WALLP_SELECTED" ]; then
  ~/.config/scripts/change_wallpaper.sh "$WALLP_DIR/$WALLP_SELECTED"
fi
