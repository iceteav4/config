function gclb
    set base_branch $argv[1]

    # work from our base branch
    git checkout $base_branch

    # remove local tracking branches where the remote branch is gone
    git fetch -p

    git branch | grep -v $base_branch | xargs git branch -D
end
