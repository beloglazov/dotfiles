function fzf-cd-subtree
    find * -path '*/\.*' -prune -o -type d -print ^/dev/null | \
        fzf --no-sort --tac > /tmp/fzf; and cd (cat /tmp/fzf)
end
