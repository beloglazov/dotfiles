function v
    if [ -f $argv ]
        fasd -A $argv
    end
    command vim $argv
end

