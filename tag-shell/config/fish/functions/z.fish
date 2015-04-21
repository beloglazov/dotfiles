function z -a pattern
    if test -z $pattern
        fasd
    else
        cd (fasd -d -1 $pattern)
    end
end

