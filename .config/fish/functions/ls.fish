function ls
    if count $argv > /dev/null
        exa --icons $argv --git --group-directories-first
    else
        exa --icons --git --group-directories-first
    end
end

