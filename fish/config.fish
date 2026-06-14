if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path /opt/homebrew/bin
fish_add_path ~/go/bin
fish_add_path ~/.dotnet/tools
alias v=nvim

function fish_greeting
end

starship init fish | source


# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/max/.lmstudio/bin
# End of LM Studio CLI section


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniforge/base/bin/conda
    eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

