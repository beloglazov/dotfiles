function a
    if contains $argv[1] install remove update upgrade full-upgrade
        sudo apt $argv
    else
        apt $argv
    end
end

