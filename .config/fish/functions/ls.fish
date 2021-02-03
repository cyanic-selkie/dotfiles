function ls
    if count $argv > /dev/null
        exa --icons $argv
    else
        exa --icons
    end
end

