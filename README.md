# Dotfiles

Dotfile repository for bspwm plus a whole bunch of other programs

## Programs featured
- **Window Manager:**`bspwm`
- **Hotkey Handler:**`sxhkd`
- **Notifications:**`dunst`
- **Shell:**`fish` and optionally `oh-my-fish`
- **Editor:**`neovim`
- **Window Compositor:**`picom`
- **Panel:**`polybar`
- **File Manager:**`ranger`
- **Launcher:**`rofi`
- **Colorscheme Handler:**`wpgtk`
- **GUI Launcher/Info Handler:**`xmenu`
- Various scripts called in the configs

Read through the config files and check which other programs are used to replicate the setup (e.g. `ranger` requires `ueberzug` for image previews.)

### How wpgtk works here

The color variables in the config files for `bspwm`,`dunst`, `gtk-3.0`, `rofi`, and `Xresources` (not present in this repository) are set via the templates feature of `wpgtk` (read [here](https://github.com/deviantfero/wpgtk/wiki/Templates).)
The gist is that `wpgtk` sets actual hex color variables from template files in the `.config/wpg/templates` directory, then updates the 'real' config file with the actual color variables so that the color variables across programs are consistent with the `wpg` theme.

If you are using `wpgtk` and want to alter the colors for the above applications, you must tell `wpgtk` about the template files and **you must edit the** `*.base` **files in the** `.config/wpg/templates` **directory.**
If you are not making use of `wpgtk`, you can either leave them alone or delete the `*.base` files, editing the 'true' config files as you'd like them.
