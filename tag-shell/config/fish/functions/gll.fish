function gll
    git log --graph --pretty=format:'%Cred%h%Creset%C(yellow)%d%Creset %s %Cgreen(%ad) %C(bold blue)%an%Creset' --abbrev-commit $argv
end

