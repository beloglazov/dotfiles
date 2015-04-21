function ghci
    if type -P ghci-color > /dev/null
        ghci-color
    else
        command ghci
    end
end
