# Alias v: Synonym for nvim
function v
     nvim $argv
end

# Alias scr: Select script file(s) from ~/.local/bin/ in fzf; open in nvim buffer(s)
function scr
     du -a $HOME/.local/bin/* 2>/dev/null | awk '{print $2}' | fzf --multi --preview 'bat --language sh --style=numbers --color=always --line-range :100 {}' --preview-window=right:73% | xargs -r $EDITOR -O
end

# Alias vzh: Select file(s) from ~ and hdd1 in fzf; open in nvim buffer(s)
function vzh
     du -a $HOME 2>/dev/null | awk '{print $2}' | fzf --multi --preview 'bat --style=numbers --color=always --line-range :100 {}' --preview-window=right:73% | xargs -r $EDITOR -O
end

# Alias med: cd into media directory and open ranger
function med
	cd $HOME/hdd1/media && ranger
end

# Alias tv: cd into media/tv directory and open ranger
function tv
	cd $HOME/hdd1/media/tv && ranger
end

# Alias pict: Open all images in ~/Pictures in sxiv
function pict
	sxiv -t $HOME/Pictures/*
end

# Alias dotfiles: Command to run for git actions on dotfile repo
function dotfiles
	/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME --work-tree=$HOME $argv
end






########################################################
#                                                      #
# Essentally default args for most commonly used utils #
#                                                      #
########################################################


# Alias lsx: Fancy ls
alias lsx="exa -l --color=always --group-directories-first"

# All files and dirs fancy ls
alias la="exa -la --color=always --group-directories-first"

# Long format fancy ls
alias ll="exa -l --color=always --group-directories-first"

# Tree format
alias lt="exa -T --color=always --group-directories-first"

# Dots only
alias ldot='exa -a | grep "^\." --color=auto' 

# Colorizing grep output
alias grep="grep --color=auto"

# mv interactive and verbose
alias mv="mv -iv"

# rm interactive and verbose
alias rm="rm -iv"

# cp interactive and verbose
alias cp="cp -iv"

# human readable df output
alias df="df -h"

# Alias mz: Synonym for ncmpcpp
alias mz="ncmpcpp"

# KEEP THIS ALIAS AS THE LAST ONE TO APPEAR IN THE FILE
# Important for the alii `sed` command to parse the stream properly

# Alias alii: Print all alias' with description
function alii
	grep "Alias" $HOME/.config/fish/aliases.fish | sed -e "s|#\ Alias\ ||" -e "s|:\ |\t|" -e '$d'
end


