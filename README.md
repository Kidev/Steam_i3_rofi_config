# Steam (Linux i3+rofi menu config)
A short script and the tutorial to create a shortcut to spawn a Steam menu on Linux with i3 and rofi, like the Steam process menu on Windows

![image](https://github.com/Kidev/Steam_i3_rofi_config/assets/1204936/1750d7da-bd50-4801-8aee-be8dea53693d)

_This is an example, the style of the menu is defined by your rofi config_


## Quick install
- Make sure you have installed [i3](https://i3wm.org/), [rofi](https://github.com/davatorium/rofi) and [Steam](https://store.steampowered.com/about/)
- Download and run the quick install script. Using `curl` and `bash`, use
```
curl -s "https://raw.githubusercontent.com/Kidev/Steam_i3_rofi_config/main/quickinstall.sh" | bash
```
- Refresh your i3 using `$mod+Shift+r` (`$mod` is often the `Alt` or `Win` key)
- Spawn the menu with `F7`
- To change the `F7` bind, edit `/home/$USER/.config/i3/config` last line and replace `F7` by your own bind. For example, to use `$mod+Shift+s`, replace with:
```
bindsym $mod+Shift+s exec "bash /home/$USER/.config/scripts/steam_menu.sh"
```

## Details
- Install `bash`, `curl`, [i3](https://i3wm.org/), [rofi](https://github.com/davatorium/rofi) and [Steam](https://store.steampowered.com/about/)
- Put `steam_menu.sh` inside `/home/$USER/.config/scripts/`
- Add the content of `config` to your `/home/$USER/.config/i3/config` to register the bind
- Refresh your i3 (`$mod+Shift+r` by default)
