function ssh
    which sshrc >- ^-
    set sshrc_exists $status
    if test $sshrc_exists -eq 0 -a (count $argv) -eq 1
        command sshrc $argv
    else
        if test $sshrc_exists -ne 0
            echo Warning: sshrc is not installed, falling back to ssh
        end
        command ssh $argv
    end
end

