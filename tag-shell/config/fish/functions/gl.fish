function gl
    while git log --graph --abbrev-commit \
            --pretty=format:'%Cred%h%Creset%C(yellow)%d%Creset %s %Cgreen%cr %C(bold blue)%an%Creset' \
            | fzf --ansi --no-sort --reverse --query="$q" --print-query > /tmp/fzf
        set q (cat /tmp/fzf | head -1)
        set sha (cat /tmp/fzf | tail -1 | cut -d ' ' -f 2)
        if [ -n "$sha" ];
            git show --color=always $sha | less -R
        end
    end
end


