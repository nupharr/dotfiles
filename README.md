<h1 align="center"> 📁 Dotfiles </h1>

<!-- BADGES -->
</br>

<!-- INFORMATION -->
<h1 align="left"> :blue_book: About</h1>

<img src="https://github.com/nupharr/dotfiles/blob/main/2025-06-10_16-29.png" alt="rice" align="right" width="500px">

- OS: [**`Arch Linux`**](https://archlinux.org/)
- WM: [**`BSPWM`**](https://github.com/baskerville/bspwm)
- Bar: [**`Polybar`**](https://github.com/polybar/polybar)
- Terminal: [**`Alacritty`**](https://github.com/alacritty/alacritty)
- App Launcher: [**`Rofi`**](https://github.com/davatorium/rofi)
- Shell: [**`zsh`**](https://github.com/ohmyzsh/ohmyzsh)

</br>

## Installation

Clone repository

```sh
git clone https://github.com/nupharr/dotfiles.git ~/dotfiles && cd ~/dotfiles
```

```sh
stow .
```

## 🎛️ Keybindings (`sxhkd`)

| Keybinding                     | Description                                                    |
|-------------------------------|----------------------------------------------------------------|
| `Super + Escape`              | Reload `sxhkd`                                                 |
| `Super + Return`              | Launch Alacritty terminal                                      |
| `Super + Shift + Return`      | Launch Alacritty as a floating window                          |
| `Super + Space`               | Launch app launcher via Rofi                                   |
| `Super + Shift + Space`       | Launch power menu via Rofi                                     |
| `Super + Alt + W`             | Set a random wallpaper from `~/Wallpapers`                     |
| `Super + D`                   | Toggle visibility of local windows                             |
| `Super + P`                   | Toggle Polybar visibility                                      |
| `Super + Shift + F`           | Launch Firefox                                                 |
| `Super + Shift + E`           | Launch Thunar file manager                                     |
| `Super + Shift + P`           | Launch PulseAudio control panel                                |
| `Super + Shift + I`           | Launch Firefox in private mode                                 |
| `Super + Shift + X`           | Launch color picker script                                     |
| `Super + Shift + C`           | Launch Calcurse terminal calendar                              |
| `Super + Alt + Q`             | Quit bspwm                                                     |
| `Super + Alt + R`             | Restart bspwm                                                  |
| `Super + W`                   | Close focused window                                           |
| `Super + Shift + W`           | Force kill focused window                                      |
| `Super + M`                   | Toggle tiled/monocle layout                                    |
| `Super + T`                   | Set window to tiled                                            |
| `Super + Shift + T`           | Set window to pseudo-tiled                                     |
| `Super + S`                   | Set window to floating                                         |
| `Super + F`                   | Set window to fullscreen                                       |
| `Super + H/J/K/L`             | Move focus left/down/up/right                                  |
| `Super + Shift + H/J/K/L`     | Swap window in given direction                                 |
| `Super + Tab`                 | Focus last window                                              |
| `Super + Shift + Tab`         | Focus last desktop                                             |
| `Super + 1-9, 0`              | Focus desktop 1–10                                             |
| `Super + Shift + 1-9, 0`      | Move focused window to desktop 1–10                            |
| `Super + Shift + S`           | Toggle sticky window flag (visible on all desktops)            |
| `Super + Ctrl + H/J/K/L`      | Preselect window split direction                               |
| `Super + Ctrl + 1-9`          | Set preselect ratio (0.1–0.9)                                  |
| `Super + Ctrl + Space`        | Cancel preselection on focused node                            |
| `Super + Arrow Keys`          | Move floating window by 20px                                   |
| `XF86AudioRaiseVolume`        | Increase volume by 5%                                          |
| `XF86AudioLowerVolume`        | Decrease volume by 5%                                          |
| `XF86AudioMute`               | Toggle audio mute                                              |
| `Print Screen`                | Launch Flameshot screenshot GUI                                |
| `XF86MonBrightnessUp`         | Increase screen brightness                                     |
| `XF86MonBrightnessDown`       | Decrease screen brightness                                     |
| `Super + V`                   | Launch clipboard manager (`clipmenu`)                          |
| `Super + E`                   | Launch emoji picker via Rofi                                   |
