function _git_ahead_count -a branch_name
  echo (command git log origin/$branch_name..HEAD ^/dev/null | \
    grep '^commit' | wc -l | tr -d ' ')
end
