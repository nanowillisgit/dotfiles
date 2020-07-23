# Alias v: Synonym for nvim
function v
     nvim $argv
end

# Alias scr: Select script file(s) from ~/.local/bin/ in fzf; open in nvim buffer(s)
function scr
     du -a ~/.local/bin/* 2>/dev/null | awk '{print $2}' | fzf --multi --preview 'bat --language sh --style=numbers --color=always --line-range :100 {}' --preview-window=right:73% | xargs -r $EDITOR
end

# Alias vzh: Select file(s) from ~ and hdd1 in fzf; open in nvim buffer(s)
function vzh
     du -a ~ /exthdd 2>/dev/null | awk '{print $2}' | fzf --multi --preview 'bat --style=numbers --color=always --line-range :100 {}' --preview-window=right:73% | xargs -r $EDITOR
end

# Alias med: cd into media directory and open ranger
function med
	cd /home/aatmun/hdd1/media && ranger
end

# Alias tv: cd into media/tv directory and open ranger
function tv
	cd /home/aatmun/hdd1/media/tv && ranger
end

# Alias pict: Open all images in ~/Pictures in sxiv
function pict
	sxiv -t /home/aatmun/Pictures/*
end

# Alias dotfiles: Command to run for git actions on dotfile repo
function dotfiles
	/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME --work-tree=$HOME $argv
end

# KEEP THIS ALIAS AS THE LAST ONE TO APPEAR IN THE FILE
# Important for the alii `sed` command to parse the stream properly

# Alias alii: Print all alias' with description
function alii
	grep "Alias" ~/.config/fish/aliases.fish | sed -e "s|#\ Alias\ ||" -e "s|:\ |\t|" -e '$d'
end


