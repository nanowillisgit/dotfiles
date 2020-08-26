# Export editor
set -gx EDITOR nvim
set -gx VISUAL nvim

# Configuration home
set -gx XDG_CONFIG_HOME "/home/aatmun/.config"

# Export default fzf options
set -gx FZF_DEFAULT_OPTS "--reverse --color=16"

# Export sxhkd shell
set -gx SXHKD_SHELL dash

#Export bat theme
set -gx BAT_THEME base16


set -gx W3MIMGDISPLAY_PATH "/usr/lib/w3m/w3mimgdisplay"
