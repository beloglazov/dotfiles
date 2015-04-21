function fzf-vim-fasd
    fasd -fl | fzf --no-sort --tac > /tmp/fzf; and v (cat /tmp/fzf)
end
