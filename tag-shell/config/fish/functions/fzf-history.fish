function fzf-history
    history | fzf > /tmp/fzf; and commandline (cat /tmp/fzf)
end
