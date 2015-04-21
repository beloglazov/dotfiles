function fzf-vim-subtree
    find * -path '*/\.*' -prune -o -type f -print ^/dev/null | \
        fzf --no-sort --tac > /tmp/fzf; and v (cat /tmp/fzf)
end
