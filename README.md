# Dotfiles

Dotfile repository for bspwm plus a whole bunch of other programs

## Program configs featured
- `bspwm`
- `dunst`
- `fish` and optionally `oh-my-fish`
- `mpv`
- `neovim`
- `picom`
- `polybar`
- `ranger`
- `rofi`
- `sxhkd`
- `wpgtk`

## Bare requirements to replicate my setup
- `bspwm`
- `dunst` (to be used with `libnotify`)
- `wpgtk`
- `picom`
- `polybar`
- `rofi`

### How wpgtk works here

The color variables in the config files for `bspwm`,`dunst`, `gtk-3.0`, `rofi`, and `Xresources` (not present in this repository) are set via the templates feature of `wpgtk` (read [here](https://github.com/deviantfero/wpgtk/wiki/Templates).)
The gist is that `wpgtk` sets actual hex color variables from template files in the `.config/wpg/templates` directory, then updates the 'real' config file with the actual color variables so that the color variables across programs are consistent with the `wpg` theme.

If you are using `wpgtk` and want to alter the colors for the above applications, you must tell `wpgtk` about the template files and **you must edit the** `*.base` **files in the** `.config/wpg/templates` **directory.**
If you are not making use of `wpgtk`, you can either leave them alone or delete the `*.base` files, editing the 'true' config files as you'd like them.
