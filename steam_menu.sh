#!/usr/bin/env sh

case $(echo "Store\nLibrary\nFriends\nSettings\nConsole\nExit" | rofi -dmenu -i -p 'Steam Menu:') in
    "Store") steam steam://store ;;
    "Library") steam steam://open/library ;;
    "Friends") steam steam://open/friends ;;
    "Settings") steam steam://settings ;;
    "Console") steam steam://open/console ;;
    "Exit") exit 0 ;;
esac

