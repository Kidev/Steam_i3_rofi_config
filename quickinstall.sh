#!/bin/bash

STEAMI3_URL_CONFIG="https://raw.githubusercontent.com/Kidev/Steam_i3_rofi_config/main/config"
STEAMI3_URL_MENU="https://raw.githubusercontent.com/Kidev/Steam_i3_rofi_config/main/steam_menu.sh"

# Download the menu script and save it as steam_menu.sh
mkdir -p /home/$USER/.config/scripts
curl -o /home/$USER/.config/scripts/steam_menu.sh "$STEAMI3_URL_MENU"

if [ $? -ne 0 ]; then
    echo "Failed to download the script"
    exit 1
fi

# Append the content from URL2 to the i3 config file
curl "$STEAMI3_URL_CONFIG" >> /home/$USER/.config/i3/config

if [ $? -ne 0 ]; then
    echo "Failed to update the i3 configuration file"
    exit 1
fi

echo "Steam menu installed. Refresh your i3 using \$mod+Shift+r, then use F7 to spawn the menu"
