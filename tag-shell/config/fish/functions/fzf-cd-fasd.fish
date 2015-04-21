function fzf-cd-fasd
    fasd -dl | fzf --no-sort --tac > /tmp/fzf; and cd (cat /tmp/fzf)
end
