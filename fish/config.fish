if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

alias python='python3.10'

export PATH="/home/david/Code/master/zig/build/stage3/bin:$PATH"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

export PATH="/home/david/Code/hare-project/local:$PATH"
export PATH="/home/david/.dotnet:$PATH"
complete -c apt-fast -w apt-get

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/david/miniconda3/bin/conda
    eval /home/david/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/david/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/david/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/david/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

