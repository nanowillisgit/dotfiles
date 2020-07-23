# Defined in /home/aatmun/.config/fish/functions/scr.fish @ line 2
function scr
     du -a ~/.local/bin/* 2>/dev/null | awk '{print $2}' | fzf --multi --reverse | xargs -r $EDITOR
end
