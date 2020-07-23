# Defined in /home/aatmun/.config/fish/functions/vfzhm.fish @ line 2
function vfzhm
     du -a ~ 2>/dev/null | awk '{print $2}' | fzf --multi --reverse | xargs -r $EDITOR
end
